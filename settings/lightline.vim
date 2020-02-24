let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'fugitive', 'readonly', 'relativepath', 'modified']
\     ],
\     'right': [
\       [ 'lineinfo' ],
\       [ 'percent' ],
\       [ 'fileformat', 'fileencoding', 'filetype' ],
\       [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]
\     ]
\   },
\   'component_function': {
\     'readonly': 'MyReadOnly',
\     'modified': 'MyModified',
\     'fugitive': 'MyFugitive',
\   }
\ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

function! MyReadOnly()
  if &readonly
    return 'RO'
  else
    return ''
  endif
endfunction

function! MyModified()
  if &modified
    return '+'
  else
    return ''
  endif
endfunction

function! MyFugitive()
  if exists('*fugitive#head')
    let _ = fugitive#head()
    return strlen(_) ? ''._ : ''
  else
    return ''
  endif
  return ''
endfunction
