#!/bin/sh
# ~/bin/tmux-theme-switch.sh

# Detect macOS dark mode
mode=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
if [ "$mode" = "Dark" ]; then
    THEME=mocha
else
    THEME=latte
fi

tmux set-option -g @catppuccin_flavor $THEME
tmux source-file ~/.config/tmux/tmux.conf

echo "Switched tmux theme to Catppuccin ${THEME}."
