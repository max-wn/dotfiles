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
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.cache/zsh/history
export HISTCONTROL=ignoreboth
export HISTTIMEFORMAT="%h %d %H:%M:%S "

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
