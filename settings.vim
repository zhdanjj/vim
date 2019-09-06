set encoding=utf8

set number
set relativenumber

set nowrap

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set foldmethod=indent
set foldenable
set foldlevel=99

set autoindent

set backspace=indent,eol,start

" Status bar settings
set laststatus=2
set ruler

" Bottom autocomplete dialog
set wildmenu
set completeopt=menu,popup
set completepopup=height:10,width:60,highlight:InfoPopup

" Позволяет переключаться между буферами если
" в текущем есть несохранённые изменения
set hidden

" Search immediately and highlight, ignore case
set hlsearch
set incsearch
set ignorecase
set smartcase

" No swap files
set noswapfile
set nobackup
set nowritebackup

" Reading settings from comments on file
set modeline

" Run .vimrc per project
set exrc
set secure

set nofixendofline

set completeopt-=preview

" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
" set nolist

silent! colorscheme gruvbox
set termguicolors
set background=dark

set cursorline

if exists('$TMUX') && &term !=# 'xterm-256color'
  set term=xterm-256color
endif

if has('gui_running')
  set guifont=Monospace\ 10
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=r "remove right-hand scroll bar
  set guioptions-=L "remove left-hand scroll bar
endif

" Disable delay when leaving insert mode
set timeoutlen=1000 ttimeoutlen=0

filetype plugin on
set omnifunc=syntaxcomplete#Complete

highlight link htmlTag    htmlTagName
highlight link htmlEndTag htmlTagName

ab cl console.log(

" Если нажать [o] когда курсор находится над комментарием,
" vim не будет делать комментарием следующую строку
autocmd BufRead * setlocal formatoptions-=o