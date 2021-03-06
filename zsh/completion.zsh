# New completion system
# Run autoload -U compinit && compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Menu for selection
zstyle ':completion:*:*:*:*:*' menu select

# Bounty killer
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# Colored ls
zstyle ':completion:*' list-colors ''

# Old completion system
# Completion for some commands
compctl -z -P '%' bg
compctl -j -P '%' fg jobs 
