if exists('g:startup_scripts_123') && g:startup_scripts_123
  finish
endif

let g:startup_scripts_123 = 1

" run NERDTree if no file was given
" function! StartUp()
"   if 0 == argc()
"       NERDTree
"       exe "normal \<c-w>\<c-w>"
"   end
" endfunction

" autocmd VimEnter * call StartUp()

" Changes cursor shape in normal and insert modes
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\e[6 q"
  " use a red cursor otherwise
  let &t_EI = "\e[2 q"
  " silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

" Autosave changes when focus lost
autocmd FocusLost * silent! wa

" Highlight current line in insert mode
" autocmd InsertEnter,InsertLeave * set cursorline!

" autocmd VimLeave * mksession! ~\vim_session




" Set a nicer foldtext function
set foldtext=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  if match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
    let initial = substitute( line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
    let linenum = v:foldstart + 1
    while linenum < v:foldend
      let line = getline( linenum )
      let comment_content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
      if comment_content != ''
        break
      endif
      let linenum = linenum + 1
    endwhile
    let sub = initial . ' ' . comment_content
  else
    let sub = line
    let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
    if startbrace == '{'
      let line = getline(v:foldend)
      let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
      if endbrace == '}'
        let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
      endif
    endif
  endif
  let n = v:foldend - v:foldstart + 1
  let info = " " . n . " lines"
  let sub = sub . "                                                                                                                  "
  let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
  let fold_w = getwinvar( 0, '&foldcolumn' )
  let sub = strpart( sub, 0, winwidth(0) - strlen( info ) - num_w - fold_w - 1 )
  return sub . info
endfunction




" Wraps numbers with function call 'px2rem()'
"
" col('.') - cursor position
" line('.') - number of current line
" getline('.') - String containing current line

function! Px2rem()
  let line = getline('.')
  let value = expand('<cword>')
  if match(value, '^[0-9]\+$') > -1
    let line_start = strpart(line, 0, col('.') - strlen(value))
    let line_end = strpart(line, col('.'))
    let value = 'px2rem(' . value . ')'
    call setline(line('.'), line_start . value . line_end)
    normal f)a
  endif
endfunction

inoremap <leader>r <C-o>:call Px2rem()<CR>


