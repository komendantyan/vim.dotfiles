if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.crypt = ''    " "\uF023"
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.spell = 'S̶̶p'    " "S\u0336p\u0336"
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_symbols.branch = ""
let g:airline_symbols.readonly = "R"    " "\uF8EE"
let g:airline_symbols.linenr = '¶'

let g:airline_left_sep = ""    " "\uE0B4"
let g:airline_left_alt_sep = ""    " "\uE0B5"
let g:airline_right_sep = ""  "   " \uE0B6"
let g:airline_right_alt_sep = ""    " "\uE0C3 "

let g:airline#extensions#tabline#enabled = get(g:, 'airline#extensions#tabline#enabled', 1)
