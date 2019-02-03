function ec
    emacsclient -n -e "(if (> (length (frame-list)) 1) 't)" 2> /dev/null | grep t 2> /dev/null > /dev/null
    if test $status -eq 1
        emacsclient -a '' $argv
    else
        emacsclient $argv
    end
end
