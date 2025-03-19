my_jira_url=$JIRA_URL
my_jira_ID=$JIRA_ID

ticket=${1:-`git branch --show-current 2> /dev/null | sed -E "s/"$JIRA_TICKET_PREFIX"([0-9]+).*/\1/"`}
if [ $ticket ] 
    then 
        git web--browse $JIRA_URL"/browse/"$JIRA_TICKET_PREFIX$ticket && exit
fi
git web--browse $JIRA_BOARD_URL"?assignee="$JIRA_ID