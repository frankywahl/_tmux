#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";
export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

# Rails 
if which tmux >/dev/null; then
  rm -rf ~/.tmux.conf
  ln -s ${PATH_TO_FILE}/tmux.conf ~/.tmux.conf
else
  echo "${RED}Attention: ${DEFAULT} Tmux not found"
fi 
