set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Use <cr> to confirm completion.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gp :CocCommand prettier.formatFile<CR>
nmap <silent> gl :CocCommand eslint.executeAutofix<CR>
nmap <silent> gq :CocCommand eslint.quiet<CR>

" Show all diagnostics
nmap <silent> <space>a  :<C-u>CocList diagnostics<cr>

" Find symbol in project
nmap <silent> <space>s  :<C-u>CocList -I symbols<cr>

" Refactor name
nmap <F6> <Plug>(coc-rename)

" Quick fix
nmap <leader>qf  <Plug>(coc-fix-current)

" Use K to show documentation in preview window
nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
