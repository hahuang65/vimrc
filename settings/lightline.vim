let g:lightline = {
\   'colorscheme': 'gotham',
\   'active': {
\     'left': [
\       [ 'mode', 'paste' ],
\       [ 'fugitive', 'readonly', 'filename', 'modified']
\     ],
\     'right': [
\       [ 'lineinfo' ],
\       [ 'percent' ],
\       [ 'fileformat', 'fileencoding', 'filetype' ]
\     ]
\   },
\   'component_function': {
\     'readonly': 'MyReadOnly',
\     'modified': 'MyModified',
\     'fugitive': 'MyFugitive',
\   }
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
