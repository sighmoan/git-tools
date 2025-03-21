## readme

just my git settings and some scripts to interact with jira

### install

add this to your .bashrc:

```
source '<path-to-this-repo-on-your-machine>/git_aliases_script.sh'
```

run the git config:

```
./gitconfig.sh
```

ensure that the following env vars are set:
```
export JIRA_URL=< base url to jira instance >
export JIRA_USER_ID=< user id as found in the kanban filter >
export JIRA_BOARD_URL=$JIRA_URL"/jira/software/c/projects/< whatever the id of your kanban board is>"

export JIRA_TICKET_PREFIX=<prefix of all tickets>
export JIRA_TICKET_URL=$JIRA_URL"/browse/"
```