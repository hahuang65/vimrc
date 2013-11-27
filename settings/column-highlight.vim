" Highlight cursor line. Laggy shit.
" augroup CursorLine
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
"   au WinLeave * setlocal nocursorline
"   au WinLeave * setlocal nocursorcolumn
" augroup END
