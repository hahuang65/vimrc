#!/bin/sh

if [ ! -f "${HOME}/.vim/autoload/plug.vim" ]; then
  curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi

ln -sf "${PWD}/vimrc" "${HOME}/.vimrc"

if [ -d "${HOME}/.vim/ftplugin" ]; then
  rm -rf "${HOME}/.vim/ftplugin"
fi

ln -sf "${PWD}/ftplugin" "${HOME}/.vim/ftplugin"
