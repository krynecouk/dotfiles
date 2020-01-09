" --others: untracked
" --cached: staged
nmap <expr> <Leader><Leader> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<CR>"
nmap <Leader>f :Rg<CR>
nmap <Leader>/ :BLines<CR>
