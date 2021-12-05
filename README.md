orblancog
2021dic05

elegant highlighting for vim.
Tested on VIM 8.2.

To install it:
1) On your ~/.vimrc add
syntax on

2) Copy the elegant syntax definition file in this repository, called elegant.vim, elegant inside ~/.vim/syntax

3) Inside ~/.vim/ftdetect do:
echo "au BufNewFile,BufRead *.lte,*.ele set filetype=elegant" > elegant.vim

NOTES: a) if .vimrc does not exist, create one
       b) if the ftdetect does not exist, create one
       c) the files in ~/.vim/ftdetect and ~/.vim/syntax have the same name but content is different. Do not confuse them. 


o
