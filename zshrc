# Normal config
ZSH_THEME="robbyrussell"
plugins=(git sudo archlinux brew)
source $ZSH/oh-my-zsh.sh

# User Config
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

export KEYTIMEOUT=1
