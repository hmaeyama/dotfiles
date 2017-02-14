#!/bin/sh

DOTFILES_ROOT=$(pwd -P)

echo "install start"

# make symbolic links
for src in $(find "$DOTFILES_ROOT" -maxdepth 1 -type f -name ".*" -not -path "*git")
  do
    #echo "$src"
    ln -sf "$src" ~/`basename $src`
  done

echo "install complete"
