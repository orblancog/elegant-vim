" example from https://vi.stackexchange.com/questions/4584/how-to-create-my-own-autocomplete-function



let s:commands="run_setup alter_elements amplification_factors"
let s:matches1="output output_order printout printout_format printout_order delta_x"
let s:matches2="x dd xx d"

function! elegantcomplete#elegantCommandCheck()
    " backwards search for an elegant command
    execute '?&'
    " read the command characters in line, col starts at 1, while strings index
    " start at zero
    let l:line = getline('.')
    " we substract 1 to get index zero, and add 1 to get the next element after &
    let l:tend = col('.')
    while  (l:line[l:tend] =~ '\a' || l:line[l:tend] =~ '.' || l:line[l:tend] =~ '-' || l:line[l:tend] =~ '_')
        let l:tend += 1
    endwhile
    let l:base = l:line[col('.') : l:tend-1]
    let cnt = 0
    for n in split(s:commands)
        let cnt += 1
        if n =~ '^' . l:base
            return cnt
        endif
    endfor
    return 0
endfun

function! elegantcomplete#CompleteParams(findstart, base)
    if a:findstart
        " locate the start of the word
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && (line[start - 1] =~ '\a' || line[start - 1] =~ '.' || line[start - 1] =~ '-' || line[start - 1] =~ '_')
            let start -= 1
        endwhile
        return start
    else
        " find classes matching "a:base"
        let res = []
        let com = elegantcomplete#elegantCommandCheck()
        if com == 1
            for m in split(s:matches1)
                if m =~ '^' . a:base
                    call add(res, m)
                endif
            endfor
        endif
        if com == 2
            for m in split(s:matches2)
                if m =~ '^' . a:base
                    call add(res, m)
                endif
            endfor
        endif
        return res
    endif
endfun
