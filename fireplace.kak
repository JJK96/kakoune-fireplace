define-command fireplace %{
    evaluate-commands %sh{
        #kak_window_height
        #kak_window_width
        output=$(mktemp -d -t kak-temp-XXXXXXXX)/fifo
        mkfifo ${output}
        ( $kak_config/bin/fireplace.py > ${output} ) > /dev/null 2>&1 < /dev/null &
        echo "edit! -fifo ${output} -scroll *fireplace*
hook buffer BufClose .* %{ nop %sh{ rm -r $(dirname ${output})}}
add-highlighter window/colors group 
add-highlighter window/colors/ regex (\\$) 0:rgb:ffe808
add-highlighter window/colors/ regex %{#} 0:rgb:ffce00
add-highlighter window/colors/ regex %{S} 0:rgb:ff9a00
add-highlighter window/colors/ regex %{s} 0:rgb:ff5a00
add-highlighter window/colors/ regex %{x} 0:rgb:ff0000
add-highlighter window/colors/ regex %{ } 0:rgb:cc0000
add-highlighter window/colors/ regex %{\.} 0:rgb:aa0000
add-highlighter window/colors/ regex %{:} 0:rgb:880000
add-highlighter window/colors/ regex %{\^} 0:rgb:660000
add-highlighter window/colors/ regex %{\*} 0:rgb:440000
"
    }
}
