
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required
set runtimepath+=$HOME/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.config/dein')
  call dein#begin('$HOME/.config/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.config/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('elixir-lang/vim-elixir')
  call dein#add('rhysd/committia.vim')
  call dein#add('lervag/vimtex')
  call dein#add('LnL7/vim-nix')
  call dein#add('dag/vim-fish')
  call dein#add('elmcast/elm-vim')
  call dein#add('rhysd/vim-crystal')
  
  call dein#add('chriskempson/base16-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"colorscheme base16-monokai

set mouse=a

set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap/
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

if &shell =~# 'fish$'
  set shell=/bin/bash
endif


syntax on
set autoindent
set expandtab
set softtabstop =2
set shiftwidth  =2
set shiftround

set backspace   =indent,eol,start
set laststatus  =2

set ttyfast
set lazyredraw

