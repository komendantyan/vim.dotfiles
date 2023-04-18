" <F1> - Open a window and display the help file in read-only mode

map <F2> :NERDTreeToggle<CR>
map! <F2> <ESC>:NERDTreeToggle<CR>

map <S-F2> :NERDTreeFind<CR>

map <F8> :TagbarToggle<CR>
map <F8> <ESC>:TagbarToggle<CR>


" map <F10> :bprevious<CR>
map <S-Left> :bprevious<CR>

" map <F11> :bnext<CR>
map <S-Right> :bnext<CR>

" map [ :LspPreviousReference<CR>
" map ] :LspNextReference<CR>
map <F12> :LspDefinition<CR>

" map { :LspPreviousDiagnostic<CR>
" map } :LspNextDiagnostic<CR>
" map <S-F12> :LspReference<CR>

