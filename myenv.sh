
alias adbw='adb wait-for-device'
alias q='cd ..'
alias qq='cd ../..'
alias qqq='cd ../../..'
alias qqqq='cd ../../../..'
alias qqqqq='cd ../../../../..'
alias qqqqqq='cd ../../../../../..'
alias qqqqqqq='cd ../../../../../../..'
alias sx='tmux attach'
alias tmux='TERM=xterm-256color tmux'
alias gvimr='gvim --remote-tab'
#alias p='proxychains4'
alias p='tsocks'
alias listdb='for f in `find ${HOME}/.cscope.vim/*.dir`; do echo -n $(basename $f)  :; cat $f; done'
alias vi='vim'
alias pcc='picocom -b 921600 /dev/ttyUSB0'

PS1="\[\033[38;5;74m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;250m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\\$ \[$(tput sgr0)\]"

# Map menu key to mouse middle key
#xkbset m
#xmodmap -e "keycode 135 = Pointer_Button2"

# Disable ctrl-s and ctrl-q
stty -ixon -ixoff

# Toolchains settings
# OPTEE toolchains
#PATH="$HOME/toolchains/gcc-linaro-arm-linux-gnueabihf-4.9-2014.08_linux/bin:$PATH"
PATH="$HOME/toolchains/gcc-linaro-5.3-2016.02-x86_64_arm-linux-gnueabihf/bin:$PATH"
PATH="$HOME/toolchains/gcc-linaro-6.2.1-2016.11-x86_64_aarch64-linux-gnu/bin:$PATH"
#PATH="$HOME/toolchains/aarch64-linux-android-4.9/bin:$PATH"

export CROSS_COMPILE=arm-linux-gnueabihf-

#PATH="$HOME/toolchains/aarch64-linux-android-4.9/bin:$PATH"

# L4 toolchains
#PATH="$HOME/toolchains/arm-2011.03/bin:$PATH"
#export CROSS_COMPILE=arm-none-linux-gnueabi-

# NDK
export ANDROID_NDK_ROOT="$HOME/tools/ndk/android-ndk-r13"
PATH="$ANDROID_NDK_ROOT:$PATH"

PATH="/home/hungwen/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/hungwen/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/hungwen/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/hungwen/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/hungwen/perl5"; export PERL_MM_OPT;

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#source $HOME/bin/clear_evals.sh
source $HOME/bin/myfunc.sh
