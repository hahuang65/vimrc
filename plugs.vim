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
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'mmorearty/elixir-ctags'

" General text editing improvements...
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'unblevable/quick-scope'

" General vim improvements
Plug 'junegunn/fzf.vim' " Requires that fzf is installed
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'junegunn/vim-slash'
Plug 'ludovicchabant/vim-gutentags'
Plug 'wincent/terminus'

" Cosmetics, color scheme, Powerline...
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()
