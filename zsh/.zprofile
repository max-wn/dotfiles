#!/bin/zsh

# profile file. Runs on login. Environmental variables are set here.

# If you don't plan on reverting to bash, you can remove the link in ~/.profile
# to clean up.

# directory for scripts
export PATH="$HOME/bin":$PATH
export PATH="/usr/local/sbin:$PATH"

# directory for backup
BACKUP_VOLUME_PATH="/Volumes/Samsung/backup"
export BACKUP_VOLUME_PATH

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# for gpg
export GPG_TTY=$(tty)
