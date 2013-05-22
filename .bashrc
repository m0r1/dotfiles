export LANG="ja_JP.utf-8"
export LC_ALL="ja_JP.utf-8"

export PS1="\[\e[1;32m\][\u@\h:\W \$]\[\e[00m\] "
export TERM="xterm-256color"

umask 0002

stty stop undef

# スペースやタブで始まる行をヒストリに記録しない
HISTCONTROL=ignorespace
# よく使うコマンドは履歴保存対象から外す
HISTIGNORE="fg*:bg*:history*:jobs*"

alias ssh="ssh -A"
alias emacs="emacs -nw"
alias snv="svn"

export EDITOR=/usr/bin/emacs
export SVN_EDITOR=/usr/bin/vi
export GIT_EDITOR=/usr/bin/vi
export PAGER=/usr/bin/less
export GREP_OPTIONS='--color=auto --exclude=.git --exclude=.svn --exclude=RCS --exclude=cache'

agent="$HOME/.ssh/screen-agent"
if [ -S "$agent" ]; then
    export SSH_AUTH_SOCK=$agent
elif [ ! -S "$SSH_AUTH_SOCK" ]; then
    export SSH_AUTH_SOCK=$agent
elif [ ! -L "$SSH_AUTH_SOCK" ]; then
    ln -snf "$SSH_AUTH_SOCK" $agent && export SSH_AUTH_SOCK=$agent
fi
