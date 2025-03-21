#!/bin/bash

input=$1

if [[ $input =~ ^[0-9]+$ ]] && [[ ${#input} -le 5 ]]; then
    ticket=$input
elif [[ $input == "." ]]; then
    ticket=$(git branch --show-current 2> /dev/null | sed -E "s/"$JIRA_TICKET_PREFIX"([0-9]+).*/\1/")
elif [[ $input ]]; then
    ticket=$(git show $input | grep -oE "$JIRA_TICKET_PREFIX[0-9]+" | sed "s/$JIRA_TICKET_PREFIX//g")

    if [ -z "$ticket" ]; then
        echo "sorry, could not locate a jira ticket in that commit."
        exit 1;
    fi
fi

if [ "$ticket" ] 
    then 
        git web--browse $JIRA_URL"/browse/"$JIRA_TICKET_PREFIX$ticket && exit
fi
git web--browse $JIRA_BOARD_URL"?assignee="$JIRA_USER_ID