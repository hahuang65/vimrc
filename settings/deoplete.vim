" Use Deoplete.
let g:deoplete#enable_at_startup = 1
let g:elixir_docpreview = 0

inoremap <silent><expr> <Tab>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()
