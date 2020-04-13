let g:vimwiki_list = [{'path': '$HOME/.wiki', 'path_html': '$HOME/.wiki/html'}]

augroup vimwiki_goyo
  autocmd! FileType vimwiki :Goyo
augroup end
