" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :PluginInstall from within vim.

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'

" All your bundles here

" Languages
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattonrails/vim-mix'

" General text editing improvements...
Plugin 'vim-scripts/IndexedSearch'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/vim-easy-align'

" General vim improvements
Plugin 'tpope/vim-dispatch'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Yggdroot/indentLine'
Plugin 'troydm/easybuffer.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rizzatti/dash.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'junegunn/vim-pseudocl' " Required by junegunn/vim-oblique
Plugin 'junegunn/vim-oblique'
Plugin 'janko-m/vim-test'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'terryma/vim-expand-region'
Plugin 'junegunn/vim-after-object'

" Cosmetics, color scheme, Powerline...
Plugin 'itchyny/lightline.vim'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on
