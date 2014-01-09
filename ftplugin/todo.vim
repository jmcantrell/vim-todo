setlocal autoindent

if g:todo_map_keys
    nnoremap <buffer> <leader>d :TodoMarkDone<cr>
    nnoremap <buffer> <leader>p :TodoMarkProgress<cr>
endif
