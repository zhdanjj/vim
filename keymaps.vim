" Move windows shortcuts on \w
nnoremap <Leader>w <C-w>



" Vertical splitting windows
" nnoremap <C-s> <C-W>v

" Correct Enter between two xml tags
" inoremap <expr> <CR> Expander()

" Open NERDTree
nnoremap <leader>d :NERDTree<cr>

" Close Vim and all windows and buffers
nnoremap <Leader><Leader> :qa!<CR>

" Reset search highlight
nnoremap <silent> <SPACE> :nohl<CR>

" Edit settings
nnoremap <F2> :e $HOME/.vim/rc.vim<CR>

" Reload
nnoremap <F3> :source $MYVIMRC<CR>

inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O

inoremap <F10> <ESC>:w<CR>a
nnoremap <F10> :w<CR>

imap <expr> <leader><space> emmet#expandAbbrIntelligent("\<tab>")

nnoremap <Leader>f :Goyo<CR>

" Centering search result
nnoremap n nzz
nnoremap N Nzz

" Insert !important in css
nnoremap <leader>i 0f;i !important<esc>

" FZF Buffers
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>p :Files<CR>

nnoremap <F1> <C-w>p

nnoremap <leader>f :NERDTreeFind<CR>

" Temp for Z Project
vnoremap \r :s@\(\d*\)px@\=string(submatch(1)/14.0).'rem'@g<CR><SPACE>
nnoremap \r :s@\(\d*\)px@\=string(submatch(1)/14.0).'rem'@g<CR><SPACE>

vnoremap \z :s@\(-\=\d*\)px@\='px2rem('.submatch(1).')'@g<CR>:noh<CR>
nnoremap \z :s@\(-\=\d*\)px@\='px2rem('.submatch(1).')'@g<CR>:noh<CR>

nnoremap <leader>gc :qa!<CR>

" Split html tag and insert between lines
nnoremap <C-j> 0f>a<Enter><Enter><Esc><Up>S<TAB>

