require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "javascript", 
    "typescript", 
    "lua", 
    "go", 
    "solidity", 
    "prisma", 
    "graphql", 
    "astro", 
    "hcl", 
    "svelte", 
    "css", 
    "fish",
    "html",
    "kdl",
  },
  highlight = {
    enable = true,
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
