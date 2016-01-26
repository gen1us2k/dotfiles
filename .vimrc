if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'fatih/vim-go'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'scrooloose/syntastic'

autocmd BufWritePre * :%s/\s\+$//e

syntax on
set number
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['go', 'golint']

call neobundle#end()
