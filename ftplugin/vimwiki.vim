augroup vimwiki
  au! BufWritePost ~/Dropbox/Wiki/* !pushd ~/Dropbox/Wiki; git add -A;git commit -m "Auto commit";popd
augroup END
