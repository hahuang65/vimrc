" CtrlP
map <leader>t :CtrlP<CR>
map <leader>T :ClearCtrlPCache<CR>\|:CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10'
let g:ctrlp_use_caching = 1
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
set wildignore+=*/tmp/*,*/doc/*,*/docs/*,*/log/*,*/extdoc*/*,*.so,*.swp,*.zip     " MacOSX/Linux
