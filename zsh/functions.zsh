function mkcd() { mkdir -p "${1}" && cd "${1}"; }

function i() { (head -n 5; tail -n 5) < "$1" | column -t; }


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

# Usage: gitzip
gitzip() { git archive -o $(basename $PWD).zip HEAD }

# Usage: source_if_exists <filename>
source_if_exists() {
    if [[ -f $1 ]]; then
        source $1
    else
        echo -e "\e[31mWARNING:\e[0m Can't find the file $1 to source it."
    fi
}


enable_vrack() {
    sudo ipsec start
    sleep 2
    sudo ipsec up $VRACK
}

disable_vrack() {
    sudo ipsec down $VRACK
    sudo ipsec stop
}

ttyn() { tty | awk -F"/" '{print $4}'; }
