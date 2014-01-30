" CtrlP
map <leader>t :CtrlP<CR>
map <leader>T :ClearCtrlPCache<CR>\|:CtrlP<CR>
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10'

" Change how CtrlP works based on if Ag is available
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_use_caching = 1
  let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ }
  set wildignore+=*/tmp/*,*/doc/*,*/docs/*,*/log/*,*/extdoc*/*,*.so,*.swp,*.zip     " MacOSX/Linux
endif
