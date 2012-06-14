export PS1="\[\e[1;32m\][\u@\h:\W \$]\[\e[00m\] "

export LANG="ja_JP.utf-8"
export LC_ALL="ja_JP.utf-8"

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

