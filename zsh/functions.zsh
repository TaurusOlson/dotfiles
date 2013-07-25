function mkcd() { mkdir -p "${1}" && cd "${1}"; }
function i() { (head -n 5; tail -n 5) < "$1" | column -t; }
