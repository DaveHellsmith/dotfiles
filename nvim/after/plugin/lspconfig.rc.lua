local nvim_lsp = require('lspconfig')

nvim_lsp.tsserver.setup{}
nvim_lsp.eslint.setup{}

local lsp_installer = require "nvim-lsp-installer"

function common_on_attach(client, bufnr)
  -- add your code here
end

lsp_installer.on_server_ready(function (server)
    local opts = {
        on_attach = common_on_attach,
    }

    if server.name == "eslint" then
        opts.on_attach = function (client, bufnr)
            -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
            -- the resolved capabilities of the eslint server ourselves!
            client.server_capabilities.documentFormattingProvider = true
            common_on_attach(client, bufnr)
        end
        opts.settings = {
            format = { enable = true }, -- this will enable formatting
        }
    end

    server:setup(opts)
end)

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Keybindings

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]

    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]


    vim.api.nvim_command [[augroup END]]
  end
end

local opts = { silent = true, noremap=true }

local lsp_opts = vim.tbl_extend('force', opts, { expr = true })

vim.api.nvim_set_keymap('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)

vim.api.nvim_set_keymap('n', 'gd', ':Telescope lsp_definitions<CR>', opts) -- Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope

vim.api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references<CR>', opts) -- Lists LSP references for word under the cursor

vim.api.nvim_set_keymap('n', 'gi', ':Telescope lsp_implementations<CR>', opts) -- Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope

vim.api.nvim_set_keymap('n', 'ca', ':lua vim.lsp.buf.code_action()<CR>', opts) -- Lists any LSP actions for the word under the cursor, that can be triggered with <cr>

vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)

vim.api.nvim_set_keymap('n', '[g', ':lua vim.lsp.diagnostic.goto_prev()<CR>', opts) -- Jump to previous diagnostic

vim.api.nvim_set_keymap('n', ']g', ':lua vim.lsp.diagnostic.goto_next()<CR>', opts) -- Jump to next diagnostic

vim.api.nvim_set_keymap('n', 'fd', ':lua vim.lsp.buf.format()<CR>', opts)

vim.api.nvim_set_keymap('n', 'lr', ':lua vim.lsp.buf.rename()<CR>', opts)

vim.keymap.set('n', '<leader>f', vim.diagnostic.open_float)

vim.cmd(
	'command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()'
)

