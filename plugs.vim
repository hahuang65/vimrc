" ========================================
" Vim plugin configuration
" ========================================
"
set runtimepath+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')

Plug 'andymass/vim-matchup'
Plug 'dense-analysis/ale' " https://github.com/dense-analysis/ale/blob/master/supported-tools.md
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
Plug 'janko/vim-test'
Plug 'junegunn/fzf.vim' " Requires that fzf is installed
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'justinmk/vim-dirvish'
Plug 'kshenoy/vim-signature'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mattn/vim-lsp-settings' " Make LSP easier to install for vim-lsp
Plug 'mhinz/vim-signify'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp' " https://github.com/prabirshrestha/vim-lsp/wiki/Servers
Plug 'rhysd/committia.vim'
Plug 'romainl/vim-cool'
Plug 'segeljakt/vim-silicon' " Requires that silicon is installed
Plug 'sheerun/vim-polyglot'
Plug 'TaDaa/vimade'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'

call plug#end()
