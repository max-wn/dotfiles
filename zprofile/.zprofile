#!/bin/zsh

# profile file. Runs on login. Environmental variables are set here.

# was needed for passphresemme
export PATH=$PATH:$HOME/Library/Python/3.8/bin

# directory for scripts
export PATH="$HOME/bin":$PATH
export PATH="/usr/local/sbin:$PATH"

# directory for backup
export BACKUP_VOLUME_PATH="/Volumes/Samsung/backup"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$UID"
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export ZDOTDIR="$HOME"/.config/zsh

# for gpg
export GPG_TTY=$(tty)
