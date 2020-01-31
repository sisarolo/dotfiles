#!/bin/bash

# TODO: script should only be executed from this directory
# ${BASH_SOURCE[0]}

dotfiles=(.bashrc .profile .inputrc .vimrc .gitconfig .tmux.conf)
for dotfile in "${dotfiles[@]}"; do
    if [ -f "$HOME/$dotfile" ]; then
        read -p "$HOME/$dotfile exists, override? (y/n): " res
        if [ -n "$res" -a \( "$res" = "y" -o "$res" = "Y" \) ]; then
            ln -sf "$PWD/$dotfile" "$HOME/$dotfile"
        fi
    else
        ln -sf "$PWD/$dotfile" "$HOME/$dotfile"
    fi
done

