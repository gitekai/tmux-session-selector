#!/usr/bin/env bash

tmux switch-client -t \
  $( \
  tmux list-sessions -F "  #{session_name}" \
  | sort \
  | fzf --reverse --print-query --border=rounded --header="Choose a session: " --color="dark" \
  |tail -1\
)
