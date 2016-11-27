map <leader>t :GitFiles<CR>
map <leader>T :Files<CR>
map <leader>c :Commits<CR>
map <leader>] :BTags<CR>
map <leader>} :Tags<CR>
map <leader>b :Buffers<CR>
map <leader>/ :Ag<Cr>

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
