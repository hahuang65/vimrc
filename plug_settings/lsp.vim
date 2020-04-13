let g:lsp_diagnostics_enabled=0 " Let ALE handle diagnostics
let g:lsp_fold_enabled=0
let g:lsp_log_file=''

" LSP Options and configuration
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete

    " If the language server provides folding info:
    " setlocal foldmethod=expr
    "   \ foldexpr=lsp#ui#vim#folding#foldexpr()
    "   \ foldtext=lsp#ui#vim#folding#foldtext()

    nmap <buffer> <localleader>d <plug>(lsp-peek-definition)
    nmap <buffer> <localleader>D <plug>(lsp-definition)
    nmap <buffer> <localleader>r <plug>(lsp-references)
    nmap <buffer> <localleader>R <plug>(lsp-rename)
    nmap <buffer> K <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
