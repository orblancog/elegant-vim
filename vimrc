" syntax highlighting
syntax on
" filetype and completion
" filetype plugin on
set omnifunc=syntaxcomplete#Complete

""autocmd BufReadPost * call elegantcomplete#jump

" matching open-close sections
set showmatch
set matchtime=3
inoremap } }<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
inoremap ] ]<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a
inoremap ) )<Left><c-o>%<c-o>:sleep 500m<CR><c-o>%<c-o>a


