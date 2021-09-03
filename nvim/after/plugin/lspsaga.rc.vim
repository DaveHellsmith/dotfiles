lua << EOF

local saga = require 'lspsaga'

saga.init_lsp_saga()

EOF



nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>

nnoremap <silent>K :Lspsaga hover_doc<CR>

inoremap <silent> <C-k> :Lspsaga signature_help<CR>

nnoremap <silent> gh :Lspsaga lsp_finder<CR>


nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>

nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

