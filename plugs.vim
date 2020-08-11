" ========================================
" Vim plugin configuration
" ========================================
"
set runtimepath+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')

Plug 'andymass/vim-matchup'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'janko/vim-test'
Plug 'junegunn/fzf.vim' " Requires that fzf is installed
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'justinmk/vim-dirvish'
Plug 'kshenoy/vim-signature'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhinz/vim-signify'
Plug 'rhysd/committia.vim'
Plug 'romainl/vim-cool'
Plug 'segeljakt/vim-silicon' " Requires that silicon is installed
Plug 'sheerun/vim-polyglot'
Plug 'TaDaa/vimade'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

call plug#end()
