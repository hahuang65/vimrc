augroup vimwiki
  au! BufWritePost ~/Dropbox/Wiki/* !pushd ~/Dropbox/Wiki; git add "%";git commit -m "Auto commit of %:t." "%";popd
augroup END
