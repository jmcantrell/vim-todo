if exists('g:todo_loaded')
    finish
endif

let g:todo_loaded = 1

if !exists('g:todo_map_keys')
    let g:todo_map_keys = 1
endif

if !exists('g:todo_filename')
    let g:todo_filename = 'TODO'
endif

if !exists('g:todo_global_directory')
    let g:todo_global_directory = expand('~')
endif

let s:save_cpo = &cpo
set cpo&vim

command! -bar -nargs=? Todo :call todo#Edit()
command! -bar -nargs=? TodoGlobal :call todo#Edit(1)
command! -bar -nargs=? TodoMarkDone :call todo#Mark('x')
command! -bar -nargs=? TodoMarkProgress :call todo#Mark('>')

if g:todo_map_keys
    nnoremap <leader>t :Todo<cr>
    nnoremap <leader>T :TodoGlobal<cr>
endif

let &cpo = s:save_cpo
