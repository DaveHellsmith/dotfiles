" Plugins
runtime ./plugins.vim

" Enable numbering
:set relativenumber

:set mouse=a

syntax enable

set autoindent

set t_BE=

set smarttab

" indents
set ai "Auto indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

hi Normal guibg=NONE ctermbg=NONE

augroup user_colors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END

" Theme
colorscheme catppuccin 
