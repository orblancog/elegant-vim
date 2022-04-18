orblancog
2022apr19

# Vim highlighting for elegant
vim highlighting for elegant syntax.

Tested on VIM 8.2.


testing completion for parameters based on previous function.

# Usage
The highlighting mode is automatically activated when the file ends in .ele or .lte.

## autocomplete the function name: & CTRL+O
To autocomplete the name of a function, type "&" and then type CTRL+O, a submenu will be display with the matching options.
```vim
&"CTRL+0"
```
The lists gets refined if you type "&" and the first characters of the function name, e.g.
```vim
&tune"CTRL+0"
```
## autocomplete function parameters: CTR+U
To autocomplete the parameters of a function, put the cursor anywhere below the last function call that starts with &, and type "CTRL+U"



# Version
0.1 2021dec05 first release

0.2 2022apr18 adds function parameter completion

# How to install it:
1) Copy the content of .vimrc on your .vimrc

2) Copy the content of the syntax, ftdetect, autoload and after folders to  ~/.vim/ 



NOTES: a) if .vimrc does not exist, create one
       b) if the folders do not exist, create them
       c) Several files are called elegant.vim but their content is different depending on the folder. Do not confuse them. 


o
