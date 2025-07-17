#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -l'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

# To get starship working 
eval "$(starship init bash)"
