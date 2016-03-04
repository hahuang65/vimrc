" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :PluginInstall from within vim.

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Languages
Plug 'elixir-lang/vim-elixir'
Plug 'vim-ruby/vim-ruby'
Plug 'dag/vim-fish'
Plug 'janko-m/vim-test'

" General text editing improvements...
Plug 'vim-scripts/IndexedSearch'
Plug 'vim-scripts/matchit.zip'
Plug 'terryma/vim-multiple-cursors'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'Shougo/deoplete.nvim'

" General vim improvements
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'troydm/easybuffer.vim'
Plug 'tpope/vim-fugitive'
Plug 'rizzatti/dash.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'junegunn/vim-pseudocl' " Required by junegunn/vim-oblique
Plug 'junegunn/vim-oblique'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'junegunn/vim-after-object'

" Cosmetics, color scheme, Powerline...
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'whatyouhide/vim-gotham'

call plug#end()
