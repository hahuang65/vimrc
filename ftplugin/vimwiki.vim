augroup vimwiki
  au! BufWritePost ~/Dropbox/Wiki/* !pushd ~/Dropbox/Wiki; git add -A;git commit -m "Auto commit";popd
  map <leader>w<leader>d :0put='# '.expand('%:t:r')<CR>
augroup END
