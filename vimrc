if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" let neobundle manage neobundle
NeoBundleFetch 'shougo/neobundle.vim'

" NeoBundle bundles
NeoBundle 'lokaltog/vim-powerline'
NeoBundle 'shougo/vimproc'
NeoBundle 'shuogo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/scratch.vim'

" Use Vim settings rather than Vi settings. Must be first, it affects other options
set nocompatible
filetype off
filetype plugin indent on

" Solarized
let g:solarized_termtrans = 1
color Solarized
set background=dark

" Show line numbers
set number

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

" Don't wrap lines
set nowrap

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

let mapleader = ","
imap jj <Esc>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

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

" Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'

" NERDTree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" Unite.vim
nnoremap <leader>t :Unite file_rec/async<CR>
