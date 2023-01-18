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
# │                    ┌─ Remove active line
# │                    │            ┌─ Make each word an option
# │                    │            │             ┌─ Dedup whitespace
# │                    │            │             │                   ┌─ Sort (to allow for uniq)
# │                    │            │             │                   │      ┌─ Only allow unique opts
# ▼                    ▼            ▼             ▼                   ▼      ▼ 
tmux capture-pane -p | head -n -1 | tr ' ' '\n' | tr -s "[:space:]" | sort | uniq > $tf

# Pass words to fzf
choice=$(cat $tf | fzf)

# Send choice to pane
tmux send-keys "$choice"

if [ -z $DEBUG ]; then
    rm $tf
fi
