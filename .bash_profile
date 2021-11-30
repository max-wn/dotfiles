#
# ~/.bash_profile
#

# Profile file. Runs on login. Environmental variables are set here.

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="vim"
export BROWSER="firefox"

# user specific environment and startup programs
# dir for scripts
export PATH="$HOME/bin":$PATH
# ~/ clean up
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
# dir for backup
export BACKUP_VOLUME_PATH="/Volumes/Samsung/backup"

# prompt
#PS1='[\t \u@\h \W]\$ '
#PS1='\[\033[38;5;2m\][\t \u@\h \W] \\$ \[$(tput sgr0)\]'
#PS1='\[\033[38;5;6m\][\t \u@\h \W] \\$ \[$(tput sgr0)\]'

# autostart programms
neofetch

# for gnupg
#export GPG_TTY=$(tty)
