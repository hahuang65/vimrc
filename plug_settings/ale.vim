let g:ale_fix_on_save = 0
let g:ale_lint_on_enter = 0
let g:ale_linters_explicit = 1
let g:ale_disable_lsp = 1

let g:ale_linters = {
  \ 'ruby': ['standardrb'],
  \ 'elixir': ['credo', 'elixir-ls'],
  \ 'python': ['flake8', 'pylint'],
  \ 'rust': ['cargo', 'rls'],
  \ 'vim': ['vint']
\ }

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['autopep8', 'remove_trailing_lines', 'trim_whitespace'],
  \ 'ruby': ['standardrb', 'remove_trailing_lines', 'trim_whitespace'],
  \ 'vim': ['remove_trailing_lines', 'trim_whitespace']
\ }

" The default value only works with Rust nightly
let g:ale_rust_rustc_options=''

nmap <silent> <C-e> <Plug>(ale_next_wrap)
