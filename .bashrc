# .bashrc

if [ -f /opt/devutil/env/bashrc ]
then
    . /opt/devutil/env/bashrc
fi

# User specific aliases and functions

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

# -----------------FUNCTIONS--------------- #
function PWD {
pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed "s/ /\\//"
}

# -----------------EXPORTS--------------- #
export PATH=$PATH:/opt/devutil/ide/bin/
export PS1="[\[\e[1;32m\]\u\[\e[1;31m\]@\h \[\e[1;36m\][\t]\[\e[1;34m\]\[\033[1;34m\] \$(PWD)\[\033[0m\]]$ ";
export CONFLUENCE_USER="z7connectivity.cloud"
export CONFLUENCE_PWD="CrUy@gsB1p2@\$bl8nwS&iXfAGA6sfA/Hie6"
export CONFLUENCE_BR_PARENT="82808745"
export CONFLUENCE_DRAFT_PARENT="78944372"

# -----------------EVALS--------------- #

# -----------------SOURCING--------------- #

# -----------------ALIAS--------------- #
alias 2cd='cd ../../'
alias 3cd='cd ../../../'
alias work='cd /mnt/c/work'
alias adas='cd /mnt/c/work/ADAS'
alias pte='cd /mnt/c/work/PTE'
alias doc='cd /mnt/c/Users/adam.lang/Documents'
alias ja='cd ~/adam/ja-mvp/adam-test'
alias mlic='/mnt/c/"Program Files"/MATLAB/R2015b/etc/win64/lmutil.exe lmstat -c /mnt/c/"Program Files"/MATLAB/R2015b/licenses/network.lic'
alias downloads='cd /mnt/c/Users/adam.lang/Downloads'
alias ihulogs='cd /mnt/c/USers/adam.lang/"ONEDRIVE - CEVT"/logs/ihu-logs'
alias faktura='cd /mnt/c/USers/adam.lang/"ONEDRIVE - CEVT"/Fakturering/'
alias ccc='cd ~/work/ccc/'
alias req='cd ~/work/ccc/cloud-requirements'

alias jwt='sudo python3 ~/work/ccc/jwt-token/jwt-python.py'
alias jwt-qa='sudo python3 ~/work/ccc/jwt-token/jwt-python-qa.py'
alias jwt-vat='sudo python3 ~/work/ccc/jwt-token/jwt-python-vat.py'

alias ll='ls -la'

