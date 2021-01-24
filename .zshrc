export KEYTIMEOUT=1
export TERMINAL=kitty

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Basic tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Vi Mode
bindkey -v

# Prompt
eval "$(starship init zsh)"
