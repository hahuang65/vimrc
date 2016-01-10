" Trim whitespace on save

function! TrimWhiteSpace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
