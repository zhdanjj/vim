" When tag expanded with emmet, cursor stay between tags
" If we press Enter, second tag go to next line and 
" cursor stays before that tag, which is not desirable.
" This function add new line between two tags and 
" places cursor at that line with indent
" function! Expander()
"   let line   = getline(".")
"   let col    = col(".")
"   let first  = line[col-2]
"   let second = line[col-1]
"   let third  = line[col]

"   if first ==# ">"
"     if second ==# "<" && third ==# "/"
"       return "\<CR>\<C-o>==\<C-o>O\<TAB>"
"     else
"       return "\<CR>"
"     endif
"   else
"     return "\<CR>"
"   endif
" endfunction

function! RangerExplorer()
    exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
    if filereadable('/tmp/vim_ranger_current_file')
        exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
        call system('rm /tmp/vim_ranger_current_file')
    endif
    redraw!
endfun
map <Leader>x :call RangerExplorer()<CR>

