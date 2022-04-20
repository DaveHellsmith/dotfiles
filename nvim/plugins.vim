" Plugins managed via vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Status line
Plug 'nvim-lualine/lualine.nvim'

" LSP setup
Plug 'neovim/nvim-lspconfig'

" For installing and discovering language servers
Plug 'williamboman/nvim-lsp-installer'

" Completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Catpuccin theme
Plug 'catppuccin/nvim'

"Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Directory tree
Plug 'nvim-neo-tree/neo-tree.nvim'

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

" Built-in terminal
Plug 'akinsho/toggleterm.nvim'

" Git integration
Plug 'lewis6991/gitsigns.nvim'

" Component library for other plugins
Plug 'MunifTanjim/nui.nvim'

call plug#end()
