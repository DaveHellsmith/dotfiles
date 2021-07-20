" Plugins
runtime ./plugins.vim


" Enable numbering
:set relativenumber       
:set rnu


syntax enable

set autoindent

set t_BE=

set smarttab

" indents
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" FZF config
" ----------------------------------------------

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" ----------------------------------------------

" Nerdtree config
" -----------------------------------------------
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeShowHidden = 1
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-e> :NERDTreeToggle<CR>

" ------------------------------------------------

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" Enable completion plugion for all buffers
autocmd BufEnter * lua require'completion'.on_attach()

" Setup for Gruvbox theme
let g:gruvbox_transparent_bg = 1

let g:gruvbox_contrast_dark = 'hard'

if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

colorscheme gruvbox
