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
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'sheerun/vim-polyglot'

" General text editing improvements...
Plug 'andymass/vim-matchup'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rrethy/vim-illuminate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'unblevable/quick-scope'

" General vim improvements
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim' " Requires that fzf is installed
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
Plug 'kshenoy/vim-signature'
Plug 'ludovicchabant/vim-gutentags'
Plug 'maximbaz/lightline-ale'
Plug 'mhinz/vim-signify'
Plug 'segeljakt/vim-silicon' " Requires that silicon is installed
Plug 'TaDaa/vimade'
Plug 'tpope/vim-fugitive'
Plug 'wincent/terminus'
Plug 'Yilin-Yang/vim-markbar'

" Cosmetics, color scheme, Powerline...
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

call plug#end()
