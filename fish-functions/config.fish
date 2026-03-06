if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    ip -brief addr show up \
        | awk '
                !/^(lo|docker0|br-|veth)/ && $3 != "" {
                printf "%s:\033[32m%s\033[0m  ", $1, $3
                }
                END {print ""}
                '
    printf "cpu: %.0f%% ram: %.1fGb\n" \
        "$(awk '/^cpu /{u=$2+$4; t=$2+$4+$5} END{print u*100/t}' /proc/stat)" \
        "$(free -b | awk '/Mem:/ {print $3/1024/1024/1024}')" \
        | cowsay | lolcat
end
