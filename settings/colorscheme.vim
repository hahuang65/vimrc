" Overrides for Nord theme
" nord1  (#3B4252)  = "0"
" nord3  (#4C566A) = "8"
" nord5  (#E5E9F0) = "7"
" nord6  (#ECEFF4) = "15"
" nord7  (#8FBCBB) = "14"
" nord8  (#88C0D0) = "6"
" nord9  (#81A1C1) = "4"
" nord10 (#5E81AC) = "12"
" nord11 (#BF616A) = "1"
" nord12 (#D08770) = "11"
" nord13 (#EBCB8B) = "3"
" nord14 (#A3BE8C) = "2"
" nord15 (#B48EAD) = "5"
augroup nord-overrides
  autocmd!
  autocmd ColorScheme nord highlight elixirAtom ctermfg=5
  autocmd ColorScheme nord highlight elixirPseudoVariable ctermfg=1
augroup END

colorscheme nord
set background=dark
