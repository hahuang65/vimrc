" Searching options

nnoremap <leader>/ :Grepper! -tool ag -open -switch<CR>

" Make a simple search text object.
vnoremap <silent> q //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap q :normal vq<CR>
