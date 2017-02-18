#!/bin/sh

DOTFILES_ROOT=$(pwd -P)

echo "install start"

# make symbolic links
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue

    #echo "$f"
    dot_src=$DOTFILES_ROOT/$f
    ln -sf "$dot_src" ~/`basename $f`
done

echo "install complete"
