local nvim_lsp = require('lspconfig')
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
	  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]

    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities,
}

nvim_lsp.eslint.setup {
  on_attach = function (client, bufrn)
    client.server_capabilities.documentFormattingProvider = true
    on_attach(client, bufnr)
  end,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
}

nvim_lsp.gopls.setup {
  on_attach = function (client, bufrn)
    client.server_capabilities.documentFormattingProvider = true
    on_attach(client, bufnr)
  end,
  filetypes = { "go" },
}

nvim_lsp.svelte.setup {}

nvim_lsp.tailwindcss.setup {}

nvim_lsp.volar.setup {}

nvim_lsp.ltex.setup {}
