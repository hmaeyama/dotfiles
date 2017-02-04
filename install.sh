#!/bin/sh

DOTFILES_ROOT=$(pwd -P)

echo "install start"

# make symbolic links
for src in $(find "$DOTFILES_ROOT" -type f  -name ".*" -not -path "*.git*")
  do
    ln -sf "$src" ~/`basename $src`
  done

echo "install complete"
