" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" All your bundles here

" Languages
Bundle 'derekwyatt/vim-scala'

" General text editing improvements...
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/matchit.zip.git'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Lokaltog/vim-easymotion'

" General vim improvements
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree.git'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Yggdroot/indentLine'
Bundle 'troydm/easybuffer.vim'
Bundle 'vim-scripts/scratch.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Keithbsmiley/investigate.vim'
Bundle 'christoomey/vim-tmux-navigator'

" Text objects
Bundle 'kana/vim-textobj-user'
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'terryma/vim-expand-region'

" Cosmetics, color scheme, Powerline...
Bundle 'chrisbra/color_highlight.git'
" Bundle 'skwp/vim-colors-solarized'
" Bundle 'junegunn/seoul256.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'chriskempson/base16-vim'
" Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
