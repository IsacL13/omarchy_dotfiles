#!/bin/bash
session=$(tmux display-message -p '#S')
tmux join-pane -h -s "${session}:$1" -t .
