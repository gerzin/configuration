#!/usr/bin/env bash
source .aliases
source .bash_functions

# exports
export PS1="\w\\$ \[$(tput sgr0)\]"
if ! nvim -v &> /dev/null
then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PYTHONSTARTUP=~/.pythonrc
export HISTCONTROL=erasedups:ignorespace
