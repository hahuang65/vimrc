noremap <leader>t :GitFiles<CR>
noremap <leader>T :Files<CR>
noremap <leader>c :BCommits<CR>
noremap <leader>C :Commits<CR>
noremap <leader>] :BTags<CR>
noremap <leader>} :Tags<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>/ :RG<CR>
noremap <leader>` :Marks<CR>
noremap <leader>' :Marks<CR>

" * For syntax-highlighting, Ruby and any of the following tools are required:
"   - Bat: https://github.com/sharkdp/bat
"   - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"   - CodeRay: http://coderay.rubychan.de/
"   - Rouge: https://github.com/jneen/rouge
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --glob !"vendor/assets/**" --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Likewise, GitFiles command with preview window
command! -bang -nargs=? -complete=dir GitFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
