# Normal config
ZSH_THEME="robbyrussell"
plugins=(git sudo archlinux brew)
source $ZSH/oh-my-zsh.sh

# User Config
export PATH
PATH+="~/config/bin/"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function maintexfind {
for file in $(ls | grep "\.tex"); do
    grepp="$(cat $file | grep "\\documentclass")";
    if [[ $grepp == *"\\documentclass"* ]];
    then
        echo $file;
    fi
done
}

export KEYTIMEOUT=1
