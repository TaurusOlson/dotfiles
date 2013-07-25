bindkey -v

# History
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

bindkey '^K' kill-whole-line
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^F' forward-char
bindkey '^B' backward-char
bindkey '^Z' menu-complete
bindkey '^N' complete-word

autoload edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# bindkey '^P' history-beginning-search-backward
# bindkey '^N' history-beginning-search-forward