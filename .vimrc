set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

""" General
set nobackup
set nowb
set noswapfile
set hidden

""" Indenting
set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
""" Editing visual aids
set number
set cursorline
set showmatch
set ruler
set nofoldenable
""" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
""" GUI
set background=dark
set guioptions=egmrt
set guifont=Monaco:h14
""" Nerd tree plugin
let g:NERDTreeWinPos = "right"
""" Git wrap
au FileType gitcommit set tw=72
""" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_max_height = 20


Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
Plugin 'molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'airblade/vim-gitgutter'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

filetype plugin indent on     " required

colorscheme molokai
syntax on
set visualbell t_vb=
