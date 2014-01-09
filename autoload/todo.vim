function! todo#Filename(global)
    if !a:global
        let here = getcwd()
        while here != "/"
            let todofile = here.'/'.g:todo_filename
            if filereadable(todofile)
                return todofile
            endif
            let here = fnamemodify(here, ':h')
        endwhile
    endif
    return g:todo_global_directory.'/'.g:todo_filename
endfunction

function! todo#Edit(...)
    let global = a:0 > 0 && a:1
    execute "e ".fnameescape(todo#Filename(global))
endfunction

function! todo#Mark(char)
    execute "normal ^r".a:char
endfunction
