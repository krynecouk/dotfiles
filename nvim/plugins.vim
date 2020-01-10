call plug#begin('~/.config/nvim/plugged')
" Typing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" NERDTree
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}

" Syntax
Plug 'herringtondarkholme/yats.vim'
Plug 'neoclide/vim-jsx-improve'
Plug 'shougo/echodoc'

" Visuals
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'gcmt/taboo.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Utils
Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-startify'
call plug#end()
