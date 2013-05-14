# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gst='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gh="git hist"
alias gps='git push'
alias gpl='git pull'
alias gd='git diff'
alias gci='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias ga='git add'
# alias go='git checkout'
alias gb='git branch'
