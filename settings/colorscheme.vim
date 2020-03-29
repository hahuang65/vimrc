" If on MacOS, enable italics since xterm-256-color doesn't support it by
" default
if os == "Darwin"
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1

colorscheme dracula
