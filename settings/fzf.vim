" fzf
map <leader>t :GitFiles<CR>
map <leader>T :Files<CR>
map <leader>C :Commits<CR>
map <leader>L :Lines<CR>
map <leader>/ :Ag<Cr>

let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
