#!/usr/bin/env zsh

source "$DOTFILE_PATH/zsh/utility.sh"

# show formatted history in pager
function hist() {
  local yellow=$'\033[33m'
  local magenta=$'\033[35m'
  local none=$'\033[0m'

  echo "${magenta}$(wc -l "$HISTFILE" | sed -e 's/^[ ]*//')${none}"
  \history -nt '%F %T' 1 | sed -E "s/^([0-9: -]{19})(.*)$/${yellow}[\1]${none}\2/g" | less +G
}

# search history
function histsearch() {
  grep -i "$1" "$HISTFILE"
}