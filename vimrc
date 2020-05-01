" == Required and Initial Settings ===========================================
set nocompatible " Use Vim vs Vi settings. Must be first, affects other options

" -- Leader Keys -------------------------------------------------------------
" Must happen before plugins load so all the settings can be set accordingly
let mapleader = ' '
let maplocalleader = "\\"

" -- Current OS --------------------------------------------------------------
" Figure out the current OS. Used for certain settings
let os = substitute(system('uname'), '\n', '', '')

" -- Plug Initialization -----------------------------------------------------
" This loads all the plugins specified in ~/.dotfiles/vim/plugs.vim
if filereadable(expand('~/.dotfiles/vim/plugs.vim'))
  source ~/.dotfiles/vim/plugs.vim
endif

" == Options =================================================================

" -- General -----------------------------------------------------------------
syntax enable " Syntax highlighting

set backspace=indent,eol,start " Allow backspace to delete everything
set formatoptions+=j           " Set joining lines to be smarter
set hidden                     " Allows hiding a buffer without saving

" -- Colorscheme -------------------------------------------------------------
" Enable italics on MacOS, since xterm-256-color doesn't support it by default
if os ==# 'Darwin'
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

colorscheme dracula

" -- File Formats ------------------------------------------------------------
set encoding=utf-8           " Force UTF-8 as standard encoding
set fileformats=unix,dos,mac " Unix as the standard file type

" -- Performance -------------------------------------------------------------
set updatetime=50  " Faster intervals between CursorHold events
set timeoutlen=250 " Timeout for mappings
set ttimeoutlen=-1 " Timeout for key codes, -1 means use `timeoutlen`

" -- User Interface ----------------------------------------------------------
set guioptions-=r  " Remove scrollbar for GUI Vim
set lazyredraw     " Don't redraw for macros and commands that aren't typed
set number         " Show line numbers
set signcolumn=yes " Always show the signcolumn
set showmatch      " Show matching brackets and parentheses

" -- Status Line -------------------------------------------------------------
set laststatus=2 " Always show the statusline
set ruler        " Always show the current position
set showmode     " Always show current mode in statusline

" -- Command Line ------------------------------------------------------------
set cmdheight=3  " A few more lines for command outputs
set history=1000 " Store 1000 lines of command history
set showcmd      " Show incomplete commands at the bottom

" -- Auto Reload -------------------------------------------------------------
"  Automatically reload buffer every second, using Vim's timer feature
set autoread
if ! exists('g:CheckUpdateStarted')
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
    silent! checktime
    call timer_start(1000,'CheckUpdate')
endfunction

" -- Local vimrc -------------------------------------------------------------
set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files

" -- Swap Files --------------------------------------------------------------
" Disable swap and backup files polluting the filesystem
set noswapfile
set nobackup
set nowritebackup

" -- Persistent Undo ---------------------------------------------------------
" Keep undo history across sessions, by storing it in a file
if has('persistent_undo')
  silent !mkdir ~/.vimbackups > /dev/null 2>&1
  set undodir=~/.vimbackups
  set undofile
endif

" -- Indentation -------------------------------------------------------------
" By setting `expandtab` and the same value to `shiftwidth` and `tabstop`, vim
" will always insert spaces instead of tabs.
set autoindent    " Automatically indent new line based on previous line
set expandtab     " Soft-tabs, inserts spaces when <Tab> is used
set shiftwidth=2  " Use 2 spaces per indent
set smartindent   " Syntax-aware indentation (i.e. matching parens)
set smarttab      " Use `shiftwidth` when inserting tabs at front of the line
set softtabstop=2 " Use 2 spaces per tab when inserting text
set tabstop=2     " Use 2 spaces per tab

" -- Line Breaks -------------------------------------------------------------
set colorcolumn=80                  " Show a colored column guide at line 80
set listchars+=precedes:<,extends:> " Shows < or > if line is scrollable
set nolist                          " Disable showing tabs vs spaces
set nowrap                          " Don't wrap lines automatically
set textwidth=0                     " Disable linebreaks happening by line size
set wrapmargin=0                    " Disable wrapping based on window borders

" -- Folds -------------------------------------------------------------------
set foldmethod=syntax " Fold based on syntax
set foldlevel=1       " Start with documents folded, as a reminder folds exist

" -- Completion --------------------------------------------------------------
set shortmess+=c " Don't pass messages to `ins-completion-menu`

" Ignore these when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip

set wildmode=list:longest " List all matches, complete longest common string

" -- Search ------------------------------------------------------------------
set hlsearch  " Highlight search results
set incsearch " Incremental search as you type
set infercase " Basically smartcase for completion
set smartcase " Casing for searching based on typed text

" -- Scrolling ---------------------------------------------------------------
set scrolloff=20     " Scroll when 20 lines away from top/bottom margins
set sidescroll=1     " Scroll by 1 when reaching the sides of a line
set sidescrolloff=15 " Scroll when 15 lines from side margins

" -- Splits ------------------------------------------------------------------
set splitbelow " Split towards bottom
set splitright " Split towards right

" == Mappings ================================================================

" -- Disable Arrow Key Movement ----------------------------------------------
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" -- Use Arrow Key for resizing with animate.vim -----------------------------
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>

" -- Window Movement ---------------------------------------------------------
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
tnoremap <C-k> <C-w>k
tnoremap <C-j> <C-w>j
tnoremap <C-h> <C-w>h
tnoremap <C-l> <C-w>l

" Hides all other windows except the current
nnoremap <localleader>o :only <CR>

" Open penultimately accessed buffer
nnoremap <localleader><localleader> <C-^>

" -- File Manipulation -------------------------------------------------------
" Show full path of current file
nnoremap <localleader>p :echo expand('%')<CR>

" Edit file in same directory as current
nnoremap <localleader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

" -- Macros ------------------------------------------------------------------
" Repeat last macro if in a normal buffer
nnoremap <expr> <CR> empty(&buftype) ? '@@' : '<CR>'

" -- Folds -------------------------------------------------------------------
" Toggle folding for current position with Tab
nnoremap <Tab> za

" -- Auto-Correct Commands ---------------------------------------------------
nnoremap Q q
nnoremap q: :q
nnoremap :Q :q
nnoremap :W :w

" -- Copy and Paste ----------------------------------------------------------
" Yank text to the OS clipboard
if os ==# 'Linux'
  noremap <leader>y "+y
  noremap <leader>Y "+Y
elseif os ==# 'Darwin'
  noremap <leader>y "*y
  noremap <leader>Y "*Y
endif

" Preserve indentation while pasting text from the OS clipboard
if os ==# 'Linux'
  noremap <leader>p :put +<CR>
elseif os ==# 'Darwin'
  noremap <leader>p :put *<CR>
endif

" Jump to end of text after pasting
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Select text that was just pasted
noremap gV `[v`]

" Keep selection highlighted while shifting text
xnoremap <  <gv
xnoremap >  >gv

" Consistency, capital Y yanks til end of line
noremap Y y$

" -- Search ------------------------------------------------------------------
" This will change the word under the cursor at the same time as searching it,
" allowing further changes to be done with a simple `.`, or to continue moving
" to the next/previous instance with `n`/`N`
nnoremap c* *Ncgn

" == vimrc convenience =======================================================
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" == Auto Commands ===========================================================

" -- Trim Whitespace Before Save ---------------------------------------------
function! TrimWhiteSpace()
  let l = line('.')
  let c = col('.')
  %s/\s\+$//e
  call cursor(l, c)
endfunction

augroup TrimWhiteSpace
  autocmd BufWritePre * :call TrimWhiteSpace()
augroup END

" == Plugin Settings =========================================================
for fpath in split(globpath('~/.dotfiles/vim/plug_settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
