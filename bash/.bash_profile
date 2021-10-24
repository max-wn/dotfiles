#!/bin/bash

# Profile file. Runs on login. Environmental variables are set here.
[[ -f ~/.bashrc ]] && . ~/.bashrc

# enable browser
export BROWSER="firefox"

# dir for scripts
export PATH="$HOME/bin":$PATH

# dir for backup
export BACKUP_VOLUME_PATH="/Volumes/Samsung/backup"

# ~/ clean up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

