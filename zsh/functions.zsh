function mkcd() { mkdir -p "${1}" && cd "${1}"; }

function i() { (head -n 5; tail -n 5) < "$1" | column -t; }


# TODO Allow suffixing of files by taking into account the file extension
function suffix() { 
    if [ $# -ne 2 ]; then
        echo "suffix <dir> <string_to_suffix>"
    else
        mv ${1} ${1}_${2}
    fi
}

function nrow() { wc -l $@; }

function drop() { tail -n +2 $@; }

function rename_window() { echo -en "\e]0;$1\a" }

function pls() { echo -en $PATH | tr ":" "\n"; }

