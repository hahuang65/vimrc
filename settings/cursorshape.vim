" Change the cursor shape in Vim depending of if in INSERT mode or NORMAL/VISUAL mode."

if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
else
  let &t_SI = "\033Ptmux;\033\033]50;CursorShape=1\007\033\\"
  let &t_EI = "\033Ptmux;\033\033]50;CursorShape=0\007\033\\"
endif
