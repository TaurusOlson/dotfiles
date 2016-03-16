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

# function drop() { tail -n +2 $@; }

function rename_window() { echo -en "\e]0;$1\a" }

function pls() { echo -en $PATH | tr ":" "\n"; }

# Usage: prm <path> [<var>]
# Remove <path> from PATH or environment variable <var>.
prm () { eval "${2:-PATH}='$(pls $2 |grep -v "^$1\$" |tr '\n' :)'"; }

# Usage: punshift <path> [<var>]
# Shift <path> onto the beginning of PATH or environment variable <var>.
punshift () { eval "${2:-PATH}='$1:$(eval echo \$${2:-PATH})'"; }

# Usage: ppush <path> [<var>]
ppush () { eval "${2:-PATH}='$(eval echo \$${2:-PATH})':$1"; }

