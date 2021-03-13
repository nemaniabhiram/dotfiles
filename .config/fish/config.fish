# General Settings
set fish_greeting
set -x EDITOR nvim
set -x TERMINAL alacritty

# Colors
set fish_color_normal normal
set fish_color_command 81a1c1
set fish_color_quote a3be8c
set fish_color_redirection b48ead
set fish_color_end 88c0d0
set fish_color_error ebcb8b
set fish_color_param eceff4
set fish_color_comment 434c5e
set fish_color_match --background=brblue
set fish_color_selection white --bold --background=brblack
set fish_color_search_match bryellow --background=brblack
set fish_color_history_current --bold
set fish_color_operator 00a6b2
set fish_color_escape 00a6b2
set fish_color_cwd green
set fish_color_cwd_root red
set fish_color_valid_path --underline
set fish_color_autosuggestion 4c566a
set fish_color_user brgreen
set fish_color_host normal
set fish_color_cancel -r
set fish_pager_color_completion normal
set fish_pager_color_description B3A06D yellow
set fish_pager_color_prefix white --bold --underline
set fish_pager_color_progress brwhite --background=cyan 

# Aliases
alias v="nvim"
alias u="yay -Syu --noconfirm"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Vi Mode
function fish_user_key_bindings
  fish_vi_key_bindings
end

# Functions
# Functions needed for !! and !$
function bind_bang
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end
function bind_dollar
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
function fish_user_key_bindings
  fish_vi_key_bindings
  bind -M insert ! bind_bang
  bind -M insert '$' bind_dollar
end

# Prompt
starship init fish | source
