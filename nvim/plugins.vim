" Plugins managed via vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Status line
Plug 'shadmansaleh/lualine.nvim'

" LSP setup
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'kabouzeid/nvim-lspinstall'

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Nord theme
Plug 'shaunsingh/nord.nvim'

"Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git plugin
Plug 'tpope/vim-fugitive'

" Directory tree
Plug 'kyazdani42/nvim-tree.lua' 

" Icons for the directory tree
Plug 'kyazdani42/nvim-web-devicons' 

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Completion
Plug 'hrsh7th/nvim-compe'

" Plugins to enable telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Rooter
Plug 'ahmedkhalf/lsp-rooter.nvim'

" Snippets
Plug 'hrsh7th/vim-vsnip'

" Support for linters
Plug 'iamcco/diagnostic-languageserver'

" Support for solidity until tresitter supports its
Plug 'tomlion/vim-solidity'

" Support for TOML file highligting
Plug 'cespare/vim-toml'

" Support for commenting lines
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'terrortylor/nvim-comment'
 
" Plugin for rspec support
Plug 'thoughtbot/vim-rspec'

call plug#end()
