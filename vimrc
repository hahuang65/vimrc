if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" let neobundle manage neobundle
NeoBundleFetch 'shougo/neobundle.vim'

" NeoBundle bundles
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/scratch.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'takac/vim-hardtime'
NeoBundle 'troydm/easybuffer.vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'rking/ag.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-fugitive'

" Use Vim settings rather than Vi settings. Must be first, it affects other options
set nocompatible
filetype off
filetype plugin indent on

" Solarized
let g:solarized_termtrans = 1
colorscheme Solarized
set background=dark

" Show line numbers
set number

" Show relative line numbers
set relativenumber

" Automatically indent
set autoindent

" Ignore case when searching
set ignorecase

" Be smart about cases when searching
set smartcase

" Store :cmdline history.
set history=1000

" Show incomplete commands at the bottom
set showcmd

" Show current mode at the bottom
set showmode

" Always show the current position
set ruler

" Incremental search as you type
set incsearch

" Highlight search results
set hlsearch

" Set softtabs with 2 spaces
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" indentLine configuration
let g:indentLine_char = '│'

" Be smart with tabs
set smarttab

" Allow backspace to delete everything
set backspace=indent,eol,start

" Auto reload file when it's changed in the background
set autoread

" Show matching brackets and parentheses
set showmatch

" Blink every 2/10 of a second
set mat=2

" Don't wrap lines visually
set nowrap

" Don't wrap lines physically (auto insertion of newlines)
set textwidth=0 wrapmargin=0
set linebreak
set nolist  " list disables linebreak
set sidescroll=5
set listchars+=precedes:<,extends:>

" Syntax highlighting
syntax enable

" Force UTF-8 as standard encoding
set encoding=utf-8

" Unix as the standard file type
set ffs=unix,dos,mac

" Always show the statusline
set laststatus=2

" Enable mouse, but hide when typing
set mouse=a
set mousehide

" Set ignoreable stuff.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" At least 20 lines below and above the cursor
set scrolloff=20

" Highlight the current line
set cursorline
hi CursorLine cterm=none ctermbg=black

" Splits
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = ","
imap jj <Esc>

" Disable arrow keys.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" Highlight cursor line. Laggy shit.
" augroup CursorLine
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
"   au WinLeave * setlocal nocursorline
"   au WinLeave * setlocal nocursorcolumn
" augroup END

" Automatically leave insert mode after 'updatetime' (4s by default).
" au CursorHoldI * stopinsert

" Highlight and show trailing whitespace, and delete it on save, and on buffer change
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
function! TrimWhiteSpace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()

" Airline
" set t_Co=256
" let g:airline_powerline_fonts = 1
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_fugitive_prefix = '⭠'
" let g:airline_readonly_symbol = '⭤'
" let g:airline_linecolumn_prefix = '⭡'
" let g:airline#extensions#tabline#enabled = 1

" Lightline
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'readonly', 'filename', 'modified'] ],
  \ },
  \ 'component_function': {
  \   'readonly': 'MyReadOnly',
  \   'modified': 'MyModified',
  \   'fugitive': 'MyFugitive',
  \ },
  \ 'separator': { 'left': '⮀', 'right': '⮂' },
  \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
  \ }

function! MyReadOnly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

" NERDTree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" CtrlP
map <leader>t :CtrlP<CR>
map <leader>T :ClearCtrlPCache<CR>\|:CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10'
let g:ctrlp_use_caching = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
set wildignore+=*/tmp/*,*/doc/*,*/docs/*,*/log/*,*/extdoc*/*,*.so,*.swp,*.zip     " MacOSX/Linux

" HardTime
" let g:hardtime_default_on = 1

" EasyBuffer
noremap <leader>b :EasyBuffer<CR>
