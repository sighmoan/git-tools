#!bin/sh

folder='./script'

# navigation
alias st='cd ~/code/st'

# jira
alias jira=$folder"/navigate-to-jira-ticket.sh"

# general
alias gst='git status'
alias gd='git diff'
__git_complete gd _git_diff
alias gpl='git pull'
__git_complete gpl _git_pull
alias gps='git push'
__git_complete gps _git_push

alias gpr=$folder'/navigate-to-open-pr.sh'

# commit
alias ga='git add'
__git_complete ga _git_add
alias gaa='git add .'

alias gc='git commit'
alias gcm=$folder'/commit-w-message-no-quotes.sh'

alias gam='git add . && gst && gcm '

alias gcb='git branch --show-current | clip'

# branch
alias gpb='git push -u origin HEAD'
alias gco='git checkout'
__git_complete gco _git_checkout
alias gcob='git checkout -B'
alias gcom='git checkout master'

alias gcj=$folder'/checkout-by-jira-no.sh'

alias gpom='git pull origin main'
alias gb='git branch'


#env

M2_HOME=C:\\Users\\ata966\\code\\lib\\apache-maven-3.9.9-bin
MAVEN_HOME=%M2_HOME%
MAVEN_BIN=%M2_HOME%\bin

