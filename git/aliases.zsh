# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

alias gs='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gh="git hist"
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
alias gconfg="git config --global "


# For conflicts
# Filter all conflicts from git status
alias conflicts='git status -s | grep -e "^\(DD\|AU\|UD\|UA\|DU\|AA\|UU\)" | cut -d " " -f2'

# Open all conflicts in your favourite editor
alias resolve='conflicts | xargs $EDITOR'

# Stage them after you've done
alias cadd='conflicts | xargs git add'
