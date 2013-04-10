" Use Vim settings rather than Vi settings. Must be first, it affects other options
" REQUIRED for Vundle
set nocompatible

color Tomorrow-Night-Eighties

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

" Auto reload file when it's changed in the background
set autoread

" Show matching brackets and parentheses
set showmatch

" Blink every 2/10 of a second
set mat=2

" REQUIRED for Vundle
filetype off

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

" At least 10 lines below and above the cursor
set scrolloff=10

" Highlight the current line
set cursorline
hi CursorLine cterm=none ctermbg=black

let mapleader = ","

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

" Vundle stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
" REQUIRED
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'

" Fugitive {
  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  nnoremap <silent> <leader>gc :Gcommit<CR>
  nnoremap <silent> <leader>gb :Gblame<CR>
  nnoremap <silent> <leader>gl :Glog<CR>
  nnoremap <silent> <leader>gp :Git push<CR>
" }

" Syntastic {
  let g:syntastic_mode_map = {
    \'mode'              : 'active',
    \'active_filetypes'  : [],
    \'passive_filetypes' : ['html']
  \ }

  " Better :sign interface symbols
  let g:syntastic_error_symbol = '✗'
  let g:syntastic_warning_symbol = '!'
" }

" ctrlp {
  " Search everything
  let g:ctrlp_cmd='CtrlPMixed'

  " Search for nearest ancestor
  let g:ctrlp_working_path_mode='ra'

  " Show window at the top of the screen
  let g:ctrlp_match_window_bottom=0

  " Max 10 results
  let g:ctrlp_max_height=10

  " Jump to file if it's already open
  let g:ctrlp_switch_buffer='et'

  " Caching
  let g:ctrlp_use_caching=1

  " Don't clear cache everytime
  let g:ctrlp_clear_cache_on_exit=0

  " Show dotfiles
  let g:ctrlp_show_hidden=1

  " Numberr of recently opened files
  let g:ctrlp_mruf_max = 250

  " Open Go to symbol (via tags)
  nmap <leader>r :MyCtrlPTag<cr>
  nmap <leader>R :CtrlPBufTagAll<cr>

  " Go to file
  nmap <leader>t :CtrlP<cr>

  func! MyPrtMappings()
    let g:ctrlp_prompt_mappings = {
      \'AcceptSelection("e")' : ['<c-t>'],
      \'AcceptSelection("t")' : ['<cr>', '<2-LeftMouse>']
    \ }
  endfunc

  func! MyCtrlPTag()
    let g:ctrlp_prompt_mappings = {
      \'AcceptSelection("e")' : ['<cr>', '<2-LeftMouse>'],
      \'AcceptSelection("t")' : ['<c-t>']
    \ }
    CtrlPBufTag
  endfunc

  let g:ctrlp_buffer_func = { 'exit': 'MyPrtMappings' }

  com! MyCtrlPTag call MyCtrlPTag()

  let g:ctrlp_buftag_types = {
    \ 'ruby'       : '--language-force=ruby --ruby-types=cfFm',
    \ 'go'         : '--language-force=go --golang-types=ftv',
    \ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
    \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
    \ 'objc'       : '--language-force=objc --objc-types=mpci',
    \ 'rc'         : '--language-force=rust --rust-types=fTm'
  \ }

  let g:ctrlp_custom_ignore = {
    \ 'dir'  :  '\v[\/]\.(git|hg|svn)$',
    \ 'file' : '\v\.(exe|so|dll)$',
    \ 'link' : 'some_bad_symbolic_links',
  \ }
" }

" Gitgutter {
  " Enable by default
  let g:gitgutter_diff_args = '-w'
" }
