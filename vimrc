set encoding=utf-8
set t_Co=256

if empty(glob($HOME . '/.vim/pack/packager/opt/vim-packager'))
    call mkdir($HOME . '/.vim/pack/packager/opt/', 'p')
    call system(join(['git', 'clone',
                \ 'https://github.com/kristijanhusak/vim-packager.git',
                \ $HOME . '/.vim/pack/packager/opt/vim-packager']))
    let s:force_packager_install = 1
endif

" Load packager only when you need it
function! PackagerInit() abort
  packadd vim-packager
  call packager#init()

  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })

  call packager#add('michalbachowski/vim-wombat256mod')

  " IDE like
  call packager#add('vim-airline/vim-airline')
  "call packager#add('vim-airline/vim-airline-themes')

  call packager#add('mhinz/vim-startify')
  " call packager#add('mhinz/vim-signify')
  call packager#add('ryanoasis/vim-devicons')
  call packager#add('scrooloose/nerdtree')
  call packager#add('majutsushi/tagbar')
  " call packager#add('easymotion/vim-easymotion')
  call packager#add('derekwyatt/vim-fswitch')

  call packager#add('honza/vim-snippets')
  call packager#add('SirVer/ultisnips')

  call packager#add('scrooloose/nerdcommenter')
  call packager#add('python-mode/python-mode', {'type': 'opt'})
  call packager#add('ycm-core/YouCompleteMe', {'type': 'opt', 'do': 'apt-get install python3-dev build-essential cmake && python3 install.py --clangd-completer'})
  call packager#add('Raimondi/delimitMate')
  call packager#add('Yggdroot/indentLine')

  call packager#add('tpope/vim-fugitive')

endfunction

" "Load plugins only for specific filetype
augroup packager_filetype
  autocmd!
  autocmd FileType python packadd python-mode
augroup END

augroup load_ycm
  autocmd!
  autocmd CursorHold,CursorHoldI * :packadd YouCompleteMe | autocmd! load_ycm
augroup END
set updatetime=1000

if exists('s:force_packager_install')
    call PackagerInit() | call packager#install()
endif


" source all configs
runtime common.vim
runtime! mappings/*
runtime! plugin_settings/*
