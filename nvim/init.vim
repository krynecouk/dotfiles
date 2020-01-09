" BASIC
set nocompatible
set encoding=utf-8
set autoread
set rnu

" INDENT
set tabstop=4
set shiftwidth=4

" SEARCH
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu

" MAPPING
let mapleader="\<Space>"

" Escape terminal mode with Esc
tnoremap <Esc> <C-\><C-n>

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Remove all buffers except current one
nnoremap <Leader><BS> :%bd\|e#\|bd#<CR>

" select last paste in visual mode
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

" VISUALS
source ~/.config/nvim/visuals.vim

" PLUGINS
source ~/.config/nvim/plugins.vim
