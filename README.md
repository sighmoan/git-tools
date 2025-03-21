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
export JIRA_USER_ID=< user id as found in the kanban filter, the whole GET var assignee= >
export JIRA_BOARD_URL=$JIRA_URL"/jira/software/c/projects/< whatever the id of your kanban board is>"

export JIRA_TICKET_PREFIX=<prefix of all tickets>
export JIRA_TICKET_URL=$JIRA_URL"/browse/"
```

### tools

- displays a short form of `git status` in the command prompt
    
    the number of files added/modified

    bit buggy but it had to be quick to prevent the prompt being slow

    quick indication basically of how much is changed/staged/modified

- quick commit without having to wrap the commit message in quotes
    `gcm commit message` instead of `git commit -m 'commit message'`
    `gam commit message` also adds all changed files
- add changes to the previous commit without changing the commit message
    `gcn` instead of `git commit --amend -m 'typing out the previous message'`
    (actually just `git commit --amend --no-edit`)
- shortcut to go to jira board or tickets
    `jira` opens the kanban board, filtered by user id, if $JIRA_USER_ID is set
    `jira .` opens the jira ticket belonging to the current branch, if the branch is prefixed with a jira ticket
    `jira <number>` opens the jira ticket with that number
    `jira <git hash>` checks the git commit for a jira ticket number and, if found, opens it
    (obviously if you have jira CLI installed as jira, this will break; change the alias)
- shortcut to branches prefixed by jira tickets
    `gcj <number>` checks out the first branch that is prefixed with that jira ticket number
- shortcut to the github PR compare page
    `gpr` opens the compare page on Github, whence PRs are opened
- shortcut to push the current branch
    `gpb` instead of `git push origin <your-branch-name>`
    (actually just `git push origin HEAD`)
- along with a bunch of other aliases, take it or leave it