" Searching options

" bind <leader>* to grep word under cursor
nnoremap <leader>* :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Change how CtrlP works based on if Ag is available
if executable('ag')
  " Use ag over grep
  let g:ackprg = 'ag --vimgrep'
endif

" Make a simple "search" text object.
vnoremap <silent> q //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap q :normal vq<CR>

" Press Esc twice to unhighlight searches.
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
