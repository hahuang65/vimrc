nnoremap <leader>G :Goyo<CR>

function! s:goyo_enter()
  set wrap
  set linebreak
endfunction

function! s:goyo_leave()
  set nowrap
  set nolinebreak
endfunction

autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd User GoyoLeave nested call <SID>goyo_leave()
