let g:lsp_diagnostics_highlights_enabled=1
let g:lsp_diagnostics_echo_cursor=1
let g:lsp_diagnostics_echo_delay=50

let g:lsp_diagnostics_virtual_text_enabled = 1
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 1
let g:lsp_diagnostics_virtual_text_align = 'right'

" let g:lsp_completion_documentation_delay=200
" let g:lsp_diagnostics_echo_delay=200
" let g:lsp_diagnostics_float_delay=200
" let g:lsp_diagnostics_highlights_delay=200
" let g:lsp_diagnostics_signs_delay=200

let g:lsp_log_file = expand('~/.vim-lsp-client.log')

hi LspWarningHighlight	cterm=underline
" hi LspWarningLine	ctermbg=058
" hi LspWarningText	ctermbg=058	ctermfg=226
hi LspWarningVirtualText	ctermbg=058	ctermfg=226

hi LspErrorHighlight	cterm=underline
hi LspErrorLine	ctermbg=052
" hi LspErrorText	ctermbg=052	ctermfg=196
hi LspErrorVirtualText	ctermbg=052	ctermfg=196

hi LspInformationHighlight	cterm=underline
hi LspInformationLine	ctermbg=017
" hi LspInformationText	ctermbg=017	ctermfg=021
hi LspInformationVirtualText	ctermbg=017	ctermfg=021
