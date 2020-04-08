let g:endwise_no_mappings=1 " Compatibility issues: https://github.com/tpope/vim-endwise/issues/105

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR>    pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

set completeopt+=preview " Enable preview window
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif " Close preview when completion is done
