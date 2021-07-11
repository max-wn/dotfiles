#==============================================================================
## MY ZSHRC
#==============================================================================

# enable editor
export EDITOR="vim"

# enable vi mode
set -o vi

# enable colors:
autoload -U colors && colors	# Load colors

# prompt
PROMPT="%F{green}%*%f%F{green} %f%F{green}%n%f%F{green}@%f%F{green}%m%f%F{green} %f%F{green}%~%f%F{green} $ %f"

# history in cache directory:
export HISTSIZE=5000  # the number of items for the internal history list
export SAVEHIST=5000  # maximum number of items for the history file
export HISTFILE=~/.cache/zsh/history  # history file location
setopt HIST_IGNORE_ALL_DUPS  # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS  # do not save duplicated command
setopt HIST_REDUCE_BLANKS  # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY  # record command start time

# for my aliases stored in aliasrc
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
#alias ls="ls -lahG"

## user specific environment and startup programs
# directory for scripts
PATH=$PATH:$HOME/bin
export PATH

# directory for backup
BACKUP_VOLUME_PATH="/Volumes/Samsung/backup"
export BACKUP_VOLUME_PATH

# autostart programms
neofetch
