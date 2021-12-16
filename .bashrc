# ignoreboth = don't save consequent duplicates and lines starting with a space to history.
# erasedups  = erase all previous identical lines (= duplicates) from history.
export HISTCONTROL=ignoreboth:erasedups

# Unlimited history; see https://stackoverflow.com/q/9457233
export HISTFILESIZE=
export HISTSIZE=

# Aliases
alias exp='explorer .'
alias editbash='vim /etc/bash.bashrc'
