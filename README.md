gerris-vim
==========

Vim scripts for use with Gerris Flow Solver

This script automatically sets C syntax highlighting for .gfs files.
Code packaged from http://gfs.sourceforge.net/wiki/index.php/Tips_and_tricks#VIM_features_and_Gerris

Using tab autocomplete
```vim
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
if has("autocmd")
"set complete+=k/etc/dictionaries-common/words isk+=.,(
set complete+=k/home/daan/local/share/gerris/gerris.dic isk+=.,(
endif " has("autocmd"
```
where 
    /usr/share/gerris/gerris.dic
depends on where you installed gerris.

Use
```vim
map <leader>w :call OnlineDoc()<CR>
```
to open documentation in your browser
