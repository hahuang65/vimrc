augroup vimwiki
  autocmd! BufWritePost ~/.wiki/* call vimwiki#html#Wiki2HTML(expand(vimwiki#vars#get_wikilocal('path_html')), expand('%')) | !pushd ~/.wiki; git add -A; git commit -m "Auto commit of %:t"; popd
augroup END
