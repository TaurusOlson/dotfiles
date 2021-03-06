# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

alias g='git'
alias gs='git status'
alias gl='git l'
alias gh='git hist'
alias gps='git push'
alias gpl='git pull'
alias ga='git add'
alias gb='git branch'
alias gd='git diff'
alias gco='git checkout'
alias gci='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcma='git commit -am'


# For conflicts
# Filter all conflicts from git status
alias conflicts='git status -s | grep -e "^\(DD\|AU\|UD\|UA\|DU\|AA\|UU\)" | cut -d " " -f2'

# Open all conflicts in your favourite editor
alias resolve='conflicts | xargs $EDITOR'

# Stage them after you've done
alias cadd='conflicts | xargs git add'
