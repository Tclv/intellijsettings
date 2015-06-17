# Normal config
ZSH_THEME="robbyrussell"
plugins=(git sudo archlinux brew)
source $ZSH/oh-my-zsh.sh

# launchctl setenv MATLAB_JAVA /Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/jre

# User Config
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

export KEYTIMEOUT=1

function setres {
    xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
    xrandr --addmode eDP1 1920x1080_60.00
    xrandr --output eDP1 --mode 1920x1080_60.00
}

