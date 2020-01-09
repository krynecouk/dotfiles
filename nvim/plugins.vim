call plug#begin('~/.config/nvim/plugged')
" tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Git
Plug 'junegunn/gv.vim'

" Vim airline
Plug 'vim-airline/vim-airline'

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

" Syntax highlight
Plug 'herringtondarkholme/yats.vim'
Plug 'neoclide/vim-jsx-improve'
Plug 'shougo/echodoc'

" Filetype icons
Plug 'ryanoasis/vim-devicons'

" Vim rooter
Plug 'airblade/vim-rooter'

" Tab renam util
Plug 'gcmt/taboo.vim'

" Start screen
Plug 'mhinz/vim-startify'

" Dracula visual plugin
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
