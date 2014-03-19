function! Tab_Or_Complete()
 if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
   return "\<C-N>"
 else
   return "\<Tab>"
 endif
endfunction

function! OnlineDoc()
       let s:browser = "open"
       let s:wordUnderCursor = expand("<cword>")
        if s:wordUnderCursor =~ 'Gfs'
               let s:url = "http://gfs.sourceforge.net/wiki/index.php/".s:wordUnderCursor
       else
               let s:url = "http://gfs.sourceforge.net/wiki/index.php/Gfs".s:wordUnderCursor
       endif
       let s:cmd = "silent !" . s:browser . " " . s:url
       "echo  s:cmd
       execute  s:cmd
       redraw!
endfunction

if has("autocmd")
" c syntax highlighting
au BufNewFile,BufRead *.gfs setf c
endif " has("autocmd")
