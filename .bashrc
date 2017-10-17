# .bashrc

if [ -f /opt/devutil/env/bashrc ]
then
    . /opt/devutil/env/bashrc
fi

# User specific aliases and functions
export PATH=/usr/local/git/bin/:$PATH
export PATH=~/scripts/finnair/:$PATH
function PWD {
pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed "s/ /\\//"
}
export PS1="[\[\e[1;32m\]\u\[\e[1;31m\]@\h \[\e[1;34m\]\[\033[1;34m\]\$(PWD)\[\033[0m\]]$ ";

