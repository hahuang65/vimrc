if has('nvim')
  let test#strategy="neovim"
else
  let test#strategy="vimterminal"
endif

nnoremap <silent> <leader><leader> :TestNearest<CR>
nnoremap <silent> <localleader><localleader> :TestFile<CR>
nnoremap <silent> <localleader>t :TestLast<CR>
nnoremap <silent> <localleader>T :TestSuite<CR>
