#
# ~/.bashrc
#

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

## aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
#alias la='ls -A' 
#alias l='ls -CF'
alias dir='dir -lh --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'

## run mutt from attachments directory for save attachments in it 
alias mutt='cd ~/attachments && mutt' 

## PROMPT
# PS1='[\t \u@\h \W]\$ '
# PS1='\[\033[38;5;2m\][\t \u@\h \W] \\$ \[$(tput sgr0)\]'
PS1='\[\033[38;5;6m\][\t \u@\h \W] \\$ \[$(tput sgr0)\]'

## autostart programms
neofetch

