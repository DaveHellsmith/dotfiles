if !exists('g:lspconfig')
  finish
endif


lua << EOF
local nvim_lsp = require('lspconfig')
local coq = require('coq')

nvim_lsp.tsserver.setup{}
nvim_lsp.tsserver.setup(coq.lsp_ensure_capabilities{})

nvim_lsp.eslint.setup{}
nvim_lsp.eslint.setup(coq.lsp_ensure_capabilities{})

vim.cmd('COQnow -s')

local lsp_installer = require "nvim-lsp-installer"

lsp_installer.on_server_ready(function (server)
    local opts = {
        on_attach = common_on_attach,
    }

    if server.name == "eslint" then
        opts.on_attach = function (client, bufnr)
            -- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
            -- the resolved capabilities of the eslint server ourselves!
            client.resolved_capabilities.document_formatting = true
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

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	 --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	  -- Mappings.
  local opts = { noremap=true, silent=true }

	  -- formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end
EOF

