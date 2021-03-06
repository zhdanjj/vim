nnoremap <silent> <SPACE> :nohl<CR>

nnoremap <F2> :e $HOME/.vim/rc.vim<CR>

nnoremap <F3> :source $MYVIMRC<CR>

inoremap <F10> <ESC>:w<CR>a
nnoremap <F10> :w<CR>
nnoremap <leader>e :e .<CR>

" Временное или специфичное по проектам

" Insert !important in css
inoremap <leader>i <esc>0f;i !important<esc>
nnoremap <leader>i 0f;i !important<esc>

" Temp for Z Project
vnoremap \r :s@\(\d*\)px@\=string(submatch(1)/14.0).'rem'@g<CR><SPACE>
nnoremap \r :s@\(\d*\)px@\=string(submatch(1)/14.0).'rem'@g<CR><SPACE>

vnoremap \z :s@\(-\=\d*\)px@\='px2rem('.submatch(1).')'@g<CR>:noh<CR>
nnoremap \z :s@\(-\=\d*\)px@\='px2rem('.submatch(1).')'@g<CR>:noh<CR>

" Vue css modules
inoremap \r <ESC>:s@ class="@ :class="$style.@<CR>i
nnoremap \r :s@ class="@ :class="$style.@<CR>

" nnoremap <leader>gc :qa!<CR>

" Разбить строку с откр. и закр. тегами
" inoremap <C-j> <ENTER><ESC>O<TAB>
inoremap <C-f> <ENTER><ESC>O
