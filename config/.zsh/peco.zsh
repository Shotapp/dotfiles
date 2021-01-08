#!/usr/bin/env bash

function peco-ghq-list () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-ghq-list
bindkey '^]' peco-ghq-list

function peco-history-selection() {
    BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
#     autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
#     add-zsh-hook chpwd chpwd_recent_dirs
#     zstyle ':completion:*' recent-dirs-insert both
#     zstyle ':chpwd:*' recent-dirs-default true
#     zstyle ':chpwd:*' recent-dirs-max 1000
#     zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
# fi

# mkdir -p $HOME/.cache/shell/ 

# function peco-cdr () {
#   # local selected_dir="$(cdr -l | sed 's/^[0-9]\+ \+//g' | peco --prompt="cdr >" --query "$LBUFFER")"
#     local selected_dir="$(cdr -l | sed -E 's/[0-9]\+//' | peco --prompt="cdr >" --query "$LBUFFER")"
#     if [ -n "$selected_dir" ]; then
#         BUFFER="cd ${selected_dir}"
#         zle accept-line
#     fi
# }

# ### search a destination from cdr list
function peco-get-destination-from-cdr() {
  cdr -l  | \
  sed -e 's/^[[:digit:]]*[[:blank:]]*//' | \
  # awk '{c=gsub("/","/"); print c,length($0),$0}' | \
  sort -n | \
  # cut -d ' ' -f 3 | \
  peco --query "$LBUFFER"
}

### search a destination from cdr list and cd the destination
function peco-cdr() {
  local destination="$(peco-get-destination-from-cdr)"
  if [ -n "$destination" ]; then
    BUFFER="cd $destination"
    zle accept-line
  else
    zle reset-prompt
  fi
}

zle -N peco-cdr
bindkey '^E' peco-cdr
