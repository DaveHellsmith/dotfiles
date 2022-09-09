-- LSP related keymaps
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