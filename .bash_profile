#!/bin/bash

if [ -f ~/.bashrc ];
then
    . ~/.bashrc
fi

if [ -d "/usr/share/cowsay/cows" ];
then
    cowsay_file=$(find /usr/share/cowsay/cows -type f | awk 'BEGIN{ i = 1; srand(); } {cntr[i] = $0; i++} END{ value = int(rand() * 1000); print cntr[value % (i - 1) + 1];}')
    fortune | cowsay -f $cowsay_file
fi

# added by Anaconda3 5.0.1 installer
export PATH="/Users/lhammer/anaconda3/bin:$PATH"
