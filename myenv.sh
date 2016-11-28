

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
alias p='proxychains4'

# Map menu key to mouse middle key
#xkbset m
#xmodmap -e "keycode 135 = Pointer_Button2"

# Disable ctrl-s and ctrl-q
stty -ixon -ixoff

# Toolchains settings
# OPTEE toolchains
PATH="$HOME/toolchains/gcc-linaro-arm-linux-gnueabihf-4.9-2014.08_linux/bin:$PATH"
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

source $HOME/bin/myfunc.sh
