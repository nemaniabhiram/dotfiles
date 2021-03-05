export TERMINAL=kitty
export LC_CTYPE="en_IN.utf8"
# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Aliases
alias v="nvim"
alias rr="./.scripts/roll.sh"
alias l="ls -1A --color=always --group-directories-first"
alias l.="ls -1d .* --color=always --group-directories-first"
alias lf="ls -1 --color=always --group-directories-first"
alias ld="ls -lAh --color=always --group-directories-first"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Basic tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Vi Mode
bindkey -v
export KEYTIMEOUT=1

# Prompt
eval "$(starship init zsh)"
