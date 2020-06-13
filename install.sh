#/bin/sh

mkdir -p "${HOME}/.vim"
mkdir -p "${HOME}/.config/nvim"

if [ ! -f "${HOME}/.vim/autoload/plug.vim" ]; then
  curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi

if [ ! -f "${HOME}/.local/share/nvim/site/autoload/plug.vim" ]; then
  curl -fLo "${HOME}/.local/share/nvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi

ln -sf "${PWD}/vimrc" "${HOME}/.vimrc"
ln -sf "${PWD}/coc-settings.json" "${HOME}/.vim"
ln -sf "${PWD}/coc-settings.json" "${HOME}/.config/nvim"

ln -sf "${PWD}/vimrc" "${HOME}/.config/nvim/init.vim"
