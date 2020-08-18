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
\       [ 'fileformat', 'fileencoding', 'filetype' ],
\       [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]
\     ]
\   },
\   'component_function': {
\     'readonly': 'LightlineReadOnly',
\     'gitstatus': 'FugitiveHead',
\   },
\   'component_expand': {
\     'linter_checking': 'lightline#ale#checking',
\     'linter_infos': 'lightline#ale#infos',
\     'linter_warnings': 'lightline#ale#warnings',
\     'linter_errors': 'lightline#ale#errors',
\     'linter_ok': 'lightline#ale#ok',
\   },
\   'component_type': {
\     'linter_checking': 'right',
\     'linter_infos': 'right',
\     'linter_warnings': 'warning',
\     'linter_errors': 'error',
\     'linter_ok': 'right',
\   }
\ }

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction
