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
Plugin 'derekwyatt/vim-scala'
Plugin 'dag/vim-fish'
Plugin 'elixir-lang/vim-elixir'

" General text editing improvements...
Plugin 'vim-scripts/IndexedSearch'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'

" General vim improvements
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Yggdroot/indentLine'
Plugin 'troydm/easybuffer.vim'
Plugin 'vim-scripts/scratch.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rizzatti/dash.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmux-plugins/vim-tmux-focus-events'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'terryma/vim-expand-region'

" Cosmetics, color scheme, Powerline...
Plugin 'chrisbra/color_highlight.git'
" Plugin 'skwp/vim-colors-solarized'
" Plugin 'junegunn/seoul256.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'chriskempson/base16-vim'
" Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on
