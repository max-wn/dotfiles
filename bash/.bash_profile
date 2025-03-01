#!/bin/bash

# ~/.bash_profile
# Profile file. Runs on login. Environmental variables are set here.

[[ -f ~/.bashrc ]] && . ~/.bashrc

# enable browser
export BROWSER="brave"

# enable editor
export EDITOR="nvim"

# dir for scripts
export PATH="$HOME/bin":$PATH

# dir for backup
export BACKUP_VOLUME_PATH="/Volumes/Samsung/backup"

# ~/ clean up
## general
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
## programs
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history   # less
export HISTFILE="${XDG_STATE_HOME}"/bash/history     # bash history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg              # gnupg
#export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java  # openjdk
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var  # texmf
export MBSYNCRC="$XDG_CONFIG_HOME"/isync/mbsyncrc    # mailsync for mutt-wizard
export MANPAGER="nvim +Man!"                         # use nvim for man pages
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel     #
export W3M_DIR="$XDG_DATA_HOME"/w3m                  #
