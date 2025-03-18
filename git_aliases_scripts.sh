SCRIPT_DIRNAME="script"
SCRIPT_PATH="$(dirname "$(realpath "${BASH_SOURCE[0]}")")/$SCRIPT_DIRNAME"
echo $SCRIPT_PATH;
# navigation
alias st='cd ~/code/st'

# jira
alias jira=$SCRIPT_PATH"/navigate-to-jira-ticket.sh"

# general
alias gst='git status'
alias gd='git diff'
__git_complete gd _git_diff
alias gpl='git pull'
__git_complete gpl _git_pull
alias gps='git push'
__git_complete gps _git_push

alias gpr=$SCRIPT_PATH'/navigate-to-open-pr.sh'

# commit
alias ga='git add'
__git_complete ga _git_add
alias gaa='git add .'

alias gc='git commit'
alias gcm=$SCRIPT_PATH'/commit-w-message-no-quotes.sh'

alias gam='git add . && gst && gcm '

alias gcb='git branch --show-current | clip'

alias gcn='git commit --amend --no-edit'

# branch
alias gpb='git push -u origin HEAD'
alias gco='git checkout'
__git_complete gco _git_checkout
alias gcob='git checkout -B'
alias gcom='git checkout master'

alias gcj=$SCRIPT_PATH'/checkout-by-jira-no.sh'

alias gpom='git pull origin main'
alias gb='git branch'

#env

M2_HOME=C:\\Users\\ata966\\code\\lib\\apache-maven-3.9.9-bin
MAVEN_HOME=%M2_HOME%
MAVEN_BIN=%M2_HOME%\bin

function get_git_numbers {
  local status=$(git status --porcelain 2> /dev/null)
  if [ "$status" ]; then
    echo "[$(echo "$status" | cut -c1-2 | uniq -c | grep -o '[0-9]\+' | paste -s -d '|')]"
  fi
  echo "$(git status --porcelain 2> /dev/null | cut -c1-2 | uniq -c | grep -Eo '[0-9]' | paste -s -d "|")"
}

export PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1` `git status --porcelain 2> /dev/null | cut -c1-2 | uniq -c | grep -Eo '[0-9]' | paste -s -d "|"`\[\033[0m\]\n$ '
