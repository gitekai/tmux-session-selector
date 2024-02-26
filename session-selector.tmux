#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

default_key_bindings_session_selector="T"
tmux_option_session_selector="@session-selector"
tmux_option_session_selector_height="@session-selector-height"
default_height=40
tmux_option_session_selector_width="@session-selector-width"
default_width=80

# Multiple bindings can be set. Default binding is "T".
set_session_selector_options() {
    local key_bindings
    key_bindings=$(get_tmux_option "$tmux_option_session_selector" "$default_key_bindings_session_selector")
    local height
    height=$(get_tmux_option "$tmux_option_session_selector_height" "$default_height")
    local width
    width=$(get_tmux_option "$tmux_option_session_selector_width" "$default_width")
    local key
    for key in $(echo "${key_bindings}" | sed 's/ /\n/g'); do
        tmux bind "$key" display-popup -w "$width"% -h "$height"% -E "$CURRENT_DIR/session-selector.sh"
    done
}

get_tmux_option() {
    local option=$1
    local default_value=$2
    local option_value
    option_value="$(tmux show-option -gqv "$option")"
    if [ "$option_value" = "" ]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

function main {
    set_session_selector_options
}
main
