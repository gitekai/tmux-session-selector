# Tmux session-selector

One prefix key to rule them all (with [fzf](https://github.com/junegunn/fzf) & [zoxide](https://github.com/ajeetdsouza/zoxide)):

- Switching sessions

### Elevator Pitch

Switch sessions in a visually a little more pleasing way

### Features

`prefix + T` (customisable) - displays a pop-up with [fzf](https://github.com/junegunn/fzf) which displays the existing sessions
Choose the session and voila! You're in that session.

### Required

You must have [fzf](https://github.com,junegunn/fzf)

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux
set -g @plugin 'gitekai/tmux-session-selector'
```

Hit `prefix + I` to fetch the plugin and source it. That's it!

### Customisation

You can customise the prefix key by adding this line to your `.tmux.conf`:

```tmux
set -g @session-selector 'T'
set -g @session-selector 'T K' # for multiple key bindings
```

You can also customise the height and width of the tmux popup by adding the following lines to your `.tmux.conf`:

```tmux
set -g @session-selector-height 40
set -g @session-selector-width 80
```

### Its a striped version of the mentioned project to make it more suitable for my usage:

- Ahmed Kamal's [tmux-session-selector](https://github.com/27medkamal/tmux-session-wizard)

### License

[MIT](LICENCE.md)
