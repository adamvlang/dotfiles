# .bashrc

if [ -f /opt/devutil/env/bashrc ]
then
    . /opt/devutil/env/bashrc
fi

# User specific aliases and functions

# -----------------FUNCTIONS--------------- #
function PWD {
pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed "s/ /\\//"
}

# -----------------EXPORTS--------------- #
export PATH=$PATH:/home/adamla/scripts/finnair/
export PATH=$PATH:/opt/devutil/ide/bin/
export PS1="[\[\e[1;32m\]\u\[\e[1;31m\]@\h \[\e[1;36m\][\t]\[\e[1;34m\]\[\033[1;34m\] \$(PWD)\[\033[0m\]]$ ";


# -----------------EVALS--------------- #
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
# -----------------ALIAS--------------- #
alias cdpython='cd /home/adamla/work/tracking/lib/python/'
alias cdrave='cd /home/adamla/work/tracking/crc/modules'
alias cdreports='cd /home/adamla/work/tracking/lib/python/report_sources/include/'
alias cdmenu='cd /home/adamla/work/tracking/manu_scripts/system_roles/'
alias cdtrack='cd /home/adamla/work/tracking/'
alias cdplan='cd /home/adamla/work/planning'
alias cdcus='cd /opt/Carmen/CARMUSR/'
alias 2cd='cd ../../'
alias 3cd='cd ../../../'
alias cdsas='cd ~/work/sas/'

alias ll='ls -la'

