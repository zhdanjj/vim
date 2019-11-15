" Activation and settings plugins
" 

call plug#begin('~/.vim/plugged')

"=====================================
" Plug 'ctrlpvim/ctrlp.vim'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v(([\/]\.(git|hg|svn))|node_modules)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \}
" let g:ctrlp_open_new_file = 'r'
" let g:ctrlp_working_path_mode = 'c'
" nnoremap <silent> <C-b> :CtrlPBuffer<CR>
"=====================================

"=====================================
Plug 'KeitaNakamura/neodark.vim'
"=====================================

"=====================================
Plug 'morhetz/gruvbox'
"=====================================

"=====================================
Plug 'sheerun/vim-polyglot'
" let g:polyglot_disabled = ['javascript']
"=====================================

"=====================================
Plug 'mattn/emmet-vim'
" let g:user_emmet_expandabbr_key='<C-e>'
imap <expr> <leader><space> emmet#expandAbbrIntelligent("\<tab>")
"=====================================

"=====================================
Plug 'jiangmiao/auto-pairs'
let g:AutoPairsFlyMode = 0 
"=====================================

"=====================================
 Plug 'scrooloose/nerdtree'
 
 let NERDTreeShowLineNumbers=1
 let NERDTreeShowHidden=1
 let NERDTreeHijackNetrw=1

 nnoremap <leader>f :NERDTreeFind<CR>
 nmap <leader>d :NERDTreeToggle<CR>

" How can I make sure vim does not open files and other buffers on NerdTree
" window?
" If more than one window and previous buffer was NERDTree, go back to it.
" autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endifize=30
"=====================================

"=====================================
Plug 'tpope/vim-sleuth'
"=====================================

"=====================================
Plug 'tmux-plugins/vim-tmux-focus-events'
"=====================================

"=====================================
Plug 'tpope/vim-commentary'
"=====================================

"=====================================
" Plug 'easymotion/vim-easymotion'
" nmap <Tab> <Plug>(easymotion-s)
" vmap <Tab> <Plug>(easymotion-s)
"=====================================

"=====================================
" Plug 'Valloric/MatchTagAlways'
let g:mta_filetypes = {
    \ 'html'  : 1,
    \ 'xhtml' : 1,
    \ 'xml'   : 1,
    \ 'php'   : 1,
    \}
"=====================================

"=====================================
" Plug 'captbaritone/better-indent-support-for-php-with-html'
"=====================================

"=====================================
" Plug 'junegunn/goyo.vim'
"=====================================

"=====================================
Plug 'tpope/vim-fugitive'
nnoremap <leader>gs :Gstatus<CR>
"=====================================

"=====================================
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

nnoremap <leader>g :Rg 
nnoremap <leader>s :BLines<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>p :Files<CR>
let $FZF_DEFAULT_OPTS = '--bind=ctrl-j:accept'
"=====================================

"=====================================
" Plug 'haya14busa/incsearch.vim'
" Plug 'haya14busa/incsearch-fuzzy.vim'
" map z/  <Plug>(incsearch-fuzzy-/)
" map z?  <Plug>(incsearch-fuzzy-?)
" map zg/ <Plug>(incsearch-fuzzy-stay)
" map /   <Plug>(incsearch-forward)
" map ?   <Plug>(incsearch-backward)
" map g/  <Plug>(incsearch-stay)
"=====================================

"=====================================
" Plug 'Valloric/YouCompleteMe'
" let g:ycm_show_diagnostics_ui = 1
" let g:ycm_enable_diagnostic_signs = 0
"=====================================

"=====================================
" Plug 'AndrewRadev/inline_edit.vim'
"=====================================

"=====================================
" Plug 'Xuyuanp/nerdtree-git-plugin'
"=====================================

"=====================================
" Plug 'moll/vim-bbye'
" nnoremap <leader>c :Bdelete<CR>
"=====================================

"=====================================
" Plug 'JulesWang/css.vim'
"=====================================

"=====================================
" Plug 'junegunn/vader.vim'
"=====================================

"=====================================
" Plug 'alexlafroscia/postcss-syntax.vim'
"=====================================

"=====================================
Plug 'ryanoasis/vim-devicons'
"=====================================

"=====================================
" Plug 'leafOfTree/vim-vue-plugin'
"=====================================

"=====================================
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 set signcolumn=yes
 
 " Use `[c` and `]c` to navigate diagnostics
 nmap <silent> [c <Plug>(coc-diagnostic-prev)
 nmap <silent> ]c <Plug>(coc-diagnostic-next)
 
 " Remap keys for gotos
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)
 
 " use <tab> for trigger completion and navigate to the next complete item
 function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~ '\s'
 endfunction
 
 inoremap <silent><expr> <Tab>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<Tab>" :
       \ coc#refresh()
"=====================================

"=====================================
" Если есть nodejs и yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Иначе
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Браузер по-умолчанию. Поставить какой-нибудь 
" левый, чтобы не занимал вкладку в открытом по-умолчанию
let g:mkdp_browser = 'firefox'
"=====================================

call plug#end()
