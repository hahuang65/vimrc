#!/bin/sh

mkdir -p "${HOME}/.vim"

if [ ! -f "${HOME}/.vim/autoload/plug.vim" ]; then
  curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi

ln -sf "${PWD}/vimrc" "${HOME}/.vimrc"
