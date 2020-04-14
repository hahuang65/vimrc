let g:ale_linters = {
  \ 'ruby': ['ruby', 'rubocop', 'sorbet', 'standardrb'],
  \ 'elixir': ['credo', 'elixir-ls'],
  \ 'rust': ['cargo', 'rls', 'rustc']
\ }

" The default value only works with Rust nightly
let g:ale_rust_rustc_options=''
