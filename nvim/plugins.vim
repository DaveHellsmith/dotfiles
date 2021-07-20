" Plugins managed via vim-plug
call plug#begin(stdpath('data') . '/plugged')

" LSP setup
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'kabouzeid/nvim-lspinstall'

" Gruvbox theme
Plug 'morhetz/gruvbox'

"Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git plugin
Plug 'tpope/vim-fugitive'

" Directory tree
Plug 'scrooloose/nerdtree'

" Icons for the directory tree
Plug 'ryanoasis/vim-devicons'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Completion lib
Plug 'nvim-lua/completion-nvim'

" Autosave
Plug 'Pocco81/AutoSave.nvim'

" Rooter - determine project root
Plug 'ygm2/rooter.nvim'

" Plugins to enable telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
