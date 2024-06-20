#!/bin/bash

#DEBUG="1"

tf=$(mktemp)

if [ -n $DEBUG ]; then
    echo $tf
fi


# Box drawing
# ─ (u2500)
# │ (u2502)
# ┌ (u250c)
# ▼ (u25bc)

# ┌─ Grab tmux pane contents
# │                     ┌─ Remove active line
# │                     │            ┌─ Make each word an option
# │                     │            │             ┌─ Dedup whitespace
# │                     │            │             │                   ┌─ Sort (to allow for uniq)
# │                     │            │             │                   │      ┌─ Only allow unique opts
# ▼                     ▼            ▼             ▼                   ▼      ▼ 
tmux capture-pane -Jp | head -n -1 | tr ' ' '\n' | tr -s "[:space:]" | sort | uniq > $tf

# Pass long words to fzf
choice=$(cat $tf | grep -E '[a-zA-Z0-9_/]{6,}' | fzf)

# Send choice to pane
tmux send-keys "$choice"

if [ -z $DEBUG ]; then
    rm $tf
fi
