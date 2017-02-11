#!/bin/sh

DOTFILES_ROOT=$(pwd -P)

echo "install start"

# make symbolic links
for src in $(find "$DOTFILES_ROOT" -type f  -name ".*" -maxdepth 1 -not -path "*git")
  do
    #echo "$src"
    ln -sf "$src" ~/`basename $src`
  done

echo "install complete"
