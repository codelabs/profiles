#!/bin/bash

BASH_FILES=`ls .bash*`

for i in $BASH_FILES
do
    echo $i
    cp $i $HOME/$i
done

cp .git-prompt.sh $HOME/.git-prompt.sh
cp .screenrc $HOME/.screenrc
cp .vimrc $HOME/.vimrc
cp -r .vim $HOME/
cp -r .irssi $HOME/

