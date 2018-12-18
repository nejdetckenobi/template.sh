#!/usr/bin/env bash

mkdir -p "$HOME/bin"
cp template.sh "$HOME/bin/template.sh"
chmod +x "$HOME/bin/template.sh"
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    if [[ "$SHELL" == "/bin/bash" ]]; then
        echo -e "\nPATH=\"$PATH:$HOME/bin\"" >> "$HOME/.bashrc"
    elif [[ "$SHELL" == "/bin/zsh" ]]; then
        echo -e "\nPATH=\"$PATH:$HOME/bin\"" >> "$HOME/.zshrc"
    fi
fi
