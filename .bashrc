# ls Color Here                                                                                                                                                                                                                                                                 
alias ls='ls --color'
alias vi='/usr/bin/vim'

export LS_COLORS='di=1;34:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:*.pl=1;91:*.pm=1;93:ex=4;92'
export EDITOR=/usr/bin/vim
export HISTFILESIZE=5000 # the bash history should save 3000 commands
export HISTCONTROL=ignoredups #don't put duplicate lines in the history.

PATH=/usr/local/bin:/home/y/bin64:/home/y/bin:/home/deduri/bin:/homes/deduri/bin:/sbin:/usr/sbin:/bin:/usr/bin:/usr/X11R6/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
