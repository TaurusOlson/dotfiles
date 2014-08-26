alias .zshrc="vim ~/.zshrc"


# CD  {{{1
alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."


# LS  {{{1
alias ls="ls -FG"
alias lsd='ls -l | grep ^d'
alias ls.='ls -d .*'
alias ll="ls -lrth"
alias la="ls -a"
alias l="dirs -v | head -n 10"


# MISC{{{1
alias w="which -a"
alias ip="nmap -sP 192.168.1.0/24 | grep ^Nmap"
alias ip-mac="arp -a | grep -v incomplete"


# vim:set fdm=marker:
