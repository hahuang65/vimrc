" ========================================
" Vim plugin configuration
" ========================================
"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'mmorearty/elixir-ctags'
Plug 'slashmili/alchemist.vim'

" General text editing improvements...
Plug 'keith/investigate.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" General vim improvements
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-slash'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wincent/terminus'
Plug 'powerman/vim-plugin-AnsiEsc' " This colors the ExDocs for Alchemist

" Cosmetics, color scheme, Powerline...
Plug 'itchyny/lightline.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'

call plug#end()
