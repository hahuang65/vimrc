" ========================================
" Vim plugin configuration
" ========================================
"
set rtp+=/usr/local/opt/fzf

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

" Languages
Plug 'mmorearty/elixir-ctags'
Plug 'tpope/vim-rails'
Plug 'sheerun/vim-polyglot'

" General text editing improvements...
Plug 'wellle/context.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'unblevable/quick-scope'

" General vim improvements
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'junegunn/fzf.vim' " Requires that fzf is installed
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'wincent/terminus'
Plug 'Yilin-Yang/vim-markbar'

" Cosmetics, color scheme, Powerline...
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'

call plug#end()
