#!/bin/sh

# Searchs files with fzf on specified directories and opens them with your $EDITOR
du -a ~/.config/ ~/Docs/ ~/Downloads | awk '{print $2}' | fzf | xargs -r $EDITOR
