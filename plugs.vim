" ========================================
" Vim plugin configuration
" ========================================
"

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'mmorearty/elixir-ctags'
Plug 'slashmili/alchemist.vim'
Plug 'fishbullet/deoplete-ruby'

" General text editing improvements...
Plug 'keith/investigate.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" General vim improvements
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
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

call plug#end()
