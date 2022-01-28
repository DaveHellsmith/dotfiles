" Plugins managed via vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Status line
Plug 'shadmansaleh/lualine.nvim'

" LSP setup
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" For installing and discovering language servers
Plug 'williamboman/nvim-lsp-installer'

" Completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Nord theme
Plug 'shaunsingh/nord.nvim'

" Onehalf theme
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Nightfox theme
Plug 'EdenEast/nightfox.nvim'

"Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Directory tree
Plug 'kyazdani42/nvim-tree.lua' 

" Icons for the directory tree
Plug 'kyazdani42/nvim-web-devicons' 

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Plugins to enable telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Rooter
Plug 'ahmedkhalf/lsp-rooter.nvim'

" Support for solidity until tresitter supports its
Plug 'tomlion/vim-solidity'

" Support for TOML file highligting
Plug 'cespare/vim-toml'

" Support for commenting lines
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'terrortylor/nvim-comment'
 
call plug#end()
