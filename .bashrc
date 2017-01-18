BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
RED="\[\033[0;31m\]"
PURPLE="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GRAY="\[\033[1;37m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
NORM="\[\033[m\]"

#LD_LIBRARY_PATH="/usr/local/lib/"
#PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/"
export EFLETE_PROJECTS_DIR="/tmp"
#export EFLETE_PROJECTS_DIR="$HOME/Work/PROJECTS"
export PATH="$PATH:$HOME/bin:$HOME/Work/cov-analysis-linux64-8.5.0.1/bin:$HOME/tizen-sdk/tools"

SANDBOX="$HOME/Workspace/sandbox"

EFL116_TIZEN="$SANDBOX/efl-1.16_tizen"
EFL116="$SANDBOX/efl-1.16"
EFL117="$SANDBOX/efl-1.17"
EFL118="$SANDBOX/efl-1.18"

export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUPSTREAM="verbose"

#PS1="\n$LIGHT_BLUE[\w]$PURPLE\$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/')\n\
PS1="\n$LIGHT_PURPLE[\A]$LIGHT_BLUE[\w]$PURPLE\$(__git_ps1 [%s])\n\
$GREEN\u$LIGHT_BLUE \$ $NORM"
PS2=$YELLOW"next line >> "$NORM

alias grep="grep --color=auto"
alias ls="ls -la --color=auto"
alias install="make && sudo make install"
alias vi="vim"
alias halk="poweroff"

export CFLAGS='-g -O2 -Wall -Wextra -Wshadow'
export MAKEFLAGS='-j9'
export PATH="$HOME/arcanist/arcanist/bin:$PATH"

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# save dump cores of any size
#ulimit -c unlimited

set completion-ignore-case on

gerrit_patch_push() {
	git push origin HEAD:refs/changes/$1
}

alias gpp=gerrit_patch_push
