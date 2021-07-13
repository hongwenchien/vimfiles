#
# alias
#

# shell
alias q='cd ..'
alias qq='cd ../..'
alias qqq='cd ../../..'
alias qqqq='cd ../../../..'
alias qqqqq='cd ../../../../..'
alias qqqqqq='cd ../../../../../..'
alias qqqqqqq='cd ../../../../../../..'
alias llnc='ls -l --color=none'
alias ll='ls -alF --time-style=long-iso'
# tmux
alias sx='tmux attach'
#alias tmux='TERM=xterm-256color tmux'
alias gvimr='gvim --remote-tab'
#alias p='proxychains4'
alias p='tsocks'
alias vi='vim'
alias pcc='picocom -b 921600 /dev/ttyUSB0'
# Android
alias adbr='adb reboot'
alias adbs='adb shell sync'
alias adbw='adb wait-for-device'
# cscope
alias pwdsha='echo -n $PWD | sha256sum'
alias listdb='for f in `find ${HOME}/.cscope.vim/*.dir`; do echo -n $(basename $f)  :; cat $f; done'

alias kmsg='while true; do adb wait-for-device; adb root; adb shell dmesg -w; sleep 0.2s; done'
alias logcat='while true; do adb logcat -v time; done'
alias gzlog='while true; do adb shell cat /proc/gz_log; sleep 0.2s; done'
alias trusty_log_off='adb shell echo "file trusty*.c -p" > /d/dynamic_debug/control'

PS1="\[\033[38;5;74m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;250m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"

# Disable ctrl-s and ctrl-q
stty -ixon -ixoff

# NDK
#export ANDROID_NDK_ROOT="$HOME/tools/ndk/android-ndk-r13"
#PATH="$ANDROID_NDK_ROOT:$PATH"

# Android SDK
export PATH=$HOME/workspace/google/android_sdk/platform-tools/:$PATH

#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# ccache
#mkdir -p /tmp/.ccache
#export CCACHE_DIR="/tmp/.ccache"
#export CCACHE_DIR="$HOME/workspace/ccache"


export PATH=$HOME/workspace/tools/toolchains/aarch64/bin/:$PATH
export PATH=$HOME/workspace/tools/toolchains/gcc-linaro-6.2.1-2016.11-x86_64_arm-linux-gnueabihf/bin/:$PATH

#export PATH=$HOME/workspace/tools/toolchains/host/gcc-9.3.0/bin:$PATH

source $HOME/bin/myfunc.sh
