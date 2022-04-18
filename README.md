orblancog
2022apr18

elegant highlighting for vim.
Tested on VIM 8.2.


testing completion for parameters based on previous function.

# Version
0.1 2021dec05 first release
    

To install it:
1) On your ~/.vimrc add
```vim
syntax on
```

2) Copy from this repository the file "elegant.vim", containing the syntax definition, inside ~/.vim/syntax/

3) add the line
```vim
  au BufNewFile,BufRead *.lte,*.ele set filetype=elegant
```
 to your ~/.vimrc file, or create ~/.vim/ftdetect/elegant.vim


NOTES: a) if .vimrc does not exist, create one
       b) if the ftdetect does not exist, create one
       c) the files in ~/.vim/ftdetect and ~/.vim/syntax have the same name but content is different. Do not confuse them. 


o
