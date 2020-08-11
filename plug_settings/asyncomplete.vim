" Compatibility issues with vim-endwise:
" https://github.com/tpope/vim-endwise/issues/105
" https://github.com/roxma/nvim-completion-manager/issues/49#issuecomment-285923119

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"

set completeopt+=preview " Enable preview window

" Close preview when completion is done
augroup asyncomplete
  autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END
