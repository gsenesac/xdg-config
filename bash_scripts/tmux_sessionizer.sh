#!/usr/bin/env bash

declare -A tmuxSess
tmuxSess["/home/gordo/Desktop"]="/home/gordo/.config/tmux/tmux_test_session.sh"

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(cat <(echo "/home/gordo/Desktop") <(find ~/work ~/rje -mindepth 1 -maxdepth 1 -type d) | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -ds $selected_name -c $selected
    
    if [[ -n ${tmuxSess[$selected]:-} ]]; then
        ${tmuxSess[$selected]} $selected_name
    fi
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected_name
    
    if [[ -n ${tmuxSess[$selected]:-} ]]; then
        ${tmuxSess[$selected]} $selected_name
    fi
fi

if [[ -z $TMUX ]]; then
    tmux attach -t $selected_name
else
    tmux switch-client -t $selected_name
fi
