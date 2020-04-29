let g:endwise_no_mappings=1 " Compatibility issues: https://github.com/tpope/vim-endwise/issues/105

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" https://github.com/roxma/nvim-completion-manager/issues/49#issuecomment-285923119
imap <expr> <CR> pumvisible() ? "\<C-y>\<CR>\<Plug>DiscretionaryEnd" : "\<CR>\<Plug>DiscretionaryEnd"

set completeopt+=preview " Enable preview window

" Close preview when completion is done
augroup asyncomplete
  autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END
