" Dependencies

call plug#begin(stdpath('data') . '/plugged')

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" Navigation
Plug 'junegunn/fzf.vim'

" Editor
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

" Language support
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'

call plug#end()
