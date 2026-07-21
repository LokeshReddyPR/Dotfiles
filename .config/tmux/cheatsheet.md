# tmux Custom Keybindings Cheatsheet

Prefix key: **Ctrl+b** (default)

## Config

| Keys | Action |
| --- | --- |
| `Prefix` + `r` | Reload tmux config (`~/.config/tmux/tmux.conf`) |

## Windows

| Keys | Action |
| --- | --- |
| `Prefix` + `c` | New window in the current pane's path |
| `Ctrl+Shift+h` | Previous window (no prefix) |
| `Ctrl+Shift+l` | Next window (no prefix) |

## Panes

| Keys | Action |
| --- | --- |
| `Prefix` + `x` | Kill pane immediately (no y/n confirmation) |

## Copy Mode (vi)

Enter copy mode with `Prefix` + `[`.

| Keys | Action |
| --- | --- |
| `v` | Start selecting text |
| `y` | Copy selection to system clipboard (`pbcopy`) and exit |
| `Prefix` + `P` | Paste yanked text |

> Note: `Prefix` + `p` (lowercase) still goes to the previous window; `Prefix` + `P` (uppercase) pastes.

## Notes

- Window switching (`Ctrl+Shift+h/l`) requires your terminal emulator to forward those keys to tmux. Some terminals intercept them.
- Mouse support is enabled, and dragging in copy mode won't exit copy mode.
