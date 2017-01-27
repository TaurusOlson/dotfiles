function redis-del-keys {
    [ ! $# -eq 1 ] && echo "Usage: redis-del-keys <pattern>"
    [ $# -eq 1 ] && redis-cli --scan --pattern "$1" | xargs redis-cli del
}

function redis-list-keys {
    redis-cli --scan --pattern ${1:-"*"} 
}

function redis-get-keys {
    [ ! $# -eq 1 ] && echo "Usage: redis-get-keys <pattern>"
    [ $# -eq 1 ] && redis-cli --scan --pattern "$1" | xargs redis-cli mget
}
