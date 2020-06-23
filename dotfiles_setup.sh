#!/bin/bash

# TODO: script should only be executed from this directory
# ${BASH_SOURCE[0]}

dotfiles=(~/.bashrc ~/.profile ~/.inputrc ~/.vimrc ~/.gitconfig ~/.tmux.conf ~/.config/Code/User/settings.json)
for dotfile in "${dotfiles[@]}"; do
    if [ -f "$dotfile" ]; then
        read -p "$dotfile exists, override? (y/n): " res
        if [ -n "$res" -a \( "$res" = "y" -o "$res" = "Y" \) ]; then
            ln -sf "$(realpath $(basename $dotfile))" "$dotfile"
        fi
    else
        ln -sf "$(realpath $(basename $dotfile))" "$dotfile"
    fi
done

