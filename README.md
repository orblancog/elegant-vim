
# Vim highlighting for elegant
vim highlighting for elegant syntax.

This scripts generate vim syntax highlighting and autocompletion for the elegant accelerator particle code.

**Tested on VIM 8.2.**

![screen-gif](./elegantvim.gif)

# Usage
The highlighting mode is automatically activated when the file ends in .ele or .lte. Otherwise, use the command syntax=elegant.


## autocomplete the function name: & CTRL+x CTRL+o
To autocomplete the name of a function, type "&" and then type CTRL+x CTRL+o, a submenu will be display with the matching options.
```vim
&"CTRL+x CTRL+o"
```
The lists gets refined if you type "&" and the first characters of the function name, e.g.
```vim
&tune"CTRL+x CTRL+o"
```
## autocomplete function parameters: CTRL+x CTRL+u
To autocomplete the parameters of a function, put the cursor anywhere below the last function call that starts with &, and type "CTRL+x CTRL+u"



# Version
0.1 2021dec05 first release

0.2 2022apr18 adds function parameter completion

0.3 2022apr20 release

# How to install it:
1) Add to your ~/.vimrc file :
```vim
syntax on
set omnifunc=syntaxcomplete#Complete
```
1) Copy syntax/elegant.vim to your ~/.vim/syntax/elegant.vim

2) Copy autoload/elegant.vim to your ~/.vim/autoload/elegant.vim

3) Copy ftdetect/elegant.vim to your ~/.vim/ftdetect/elegant.vim

4) Copy after/plugin/elegant.vim to you ~/.vim/after/plugin/elegant.vim


NOTES: a) if .vimrc does not exist, create one
       b) if the folders do not exist, create them
       c) Several files are called elegant.vim but their content is different depending on the folder. Do not confuse them. 


o

orblancog
2022apr20
