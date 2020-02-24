" <F1> - Open a window and display the help file in read-only mode

map <F2> :NERDTreeToggle<CR>
map! <F2> <ESC>:NERDTreeToggle<CR>

map <F8> :TagbarToggle<CR>
map <F8> <ESC>:TagbarToggle<CR>

map <F10> :bprevious<CR>
map! <F10> <ESC>:bprevious<CR>

map <F11> :bnext<CR>
map! <F11> <ESC>:bnext<CR>i

autocmd FileType c,cpp,python nnoremap <buffer> <F12> :YcmCompleter GoTo<CR>
