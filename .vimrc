" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set linespace=0

" ================ General Config ====================
"
" set encoding=utf-8
" set fileencoding=utf-8
set term=xterm-256color
set background=dark
set mouse=a

" set eventignore=CursorMoved		
set number													" Line numbers are good
set backspace=indent,eol,start								" Allow backspace in insert mode
set history=1000											" Store lots of :cmdline history
" set showcmd												" Show incomplete cmds down the bottom
" set showmode												" Show current mode down the bottom
set gcr=a:blinkon0											" Disable cursor blink
set visualbell												" No sounds
set autoread												" Reload files changed outside vim
set title													" Sets terminal title
set ruler													" Know where the cursor is located
set hlsearch												" Highlight search terms...
set incsearch												" ...dynamically as they are typed.

set cursorline												" Sets the cursor line
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white		" Set cursor line characteristics

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.

set hidden

" File-type highlighting and configuration.

syntax on													" Turn on syntax highlighting
filetype on
filetype plugin on
filetype indent on

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set nowrap													" Don't wrap lines
" set wrapmargin=8											" Number of characters from the right where wrapping starts.
set linebreak												" Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent										" Fold based on indent
set foldnestmax=3											" Deepest fold is 3 levels
set nofoldenable											" Dont fold by default

" ================ Scrolling ========================

set scrolloff=8												" Start scrolling when we're 8 lines away from
set sidescrolloff=15
set sidescroll=1

" ================ Completion =======================
"
" set wildmode=list:longest
" set wildmenu												" enable ctrl-n and ctrl-p to scroll thru matches
" set wildignore=*.o,*.obj,*~								" stuff to ignore when tab completing
" set wildignore+=*vim/backups*
" set wildignore+=*sass-cache*
" set wildignore+=*DS_Store*
" set wildignore+=vendor/rails/**
" set wildignore+=vendor/cache/**
" set wildignore+=*.gem
" set wildignore+=log/**
" set wildignore+=tmp/**
" set wildignore+=*.png,*.jpg,*.gif

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Plugin: Airline ==================

set laststatus=2
let g:airline_theme='powerlineish'
let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:bufferline_echo=0
let g:airline#extensions#tabline#enabled=1

" ================ Plugin: Syntastic  ===============

let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1