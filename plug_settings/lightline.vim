let g:lightline = {
\   'colorscheme': 'dracula',
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'gitstatus', 'readonly', 'relativepath', 'modified']
\     ],
\     'right': [
\       [ 'lineinfo' ],
\       [ 'percent' ],
\       [ 'fileformat', 'fileencoding', 'filetype' ]
\     ]
\   },
\   'component_function': {
\     'readonly': 'LightlineReadOnly',
\     'gitstatus': 'LightlineGitStatus',
\   }
\ }

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

function! LightlineGitStatus() abort
  return get(g:, 'coc_git_status', '')
endfunction
