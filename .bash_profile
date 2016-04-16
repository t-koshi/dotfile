export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#プロンプトの表示を＄だけにする
export PS1="$ "
#プロンプトの表示を最初の設定にする
#export PS1="[\u@\h \W]\\$ "


git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
PS1='——\n\[\033[36m\]\u\[\033[0m\]\[\033[32m\]\w\[\033[0m\]:\[\033[35m\]$(git_branch)\[\033[0m\] $ '
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

alias emacsclient='/usr/local/Cellar/emacs/24.4/bin/emacsclient -n -e'
alias e='/usr/local/Cellar/emacs/24.4/bin/emacs'
#alias emacs='/usr/local/Cellar/emacs/24.4/bin/emacs --daemon'
#alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias emacs="open -a /Applications/Emacs.app"
export PATH=$PATH:/usr/local/Cellar/emacs/24.4/bin/emacs
export PATH=$PATH:~/bin

PATH=$PATH:/usr/local/sbin

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

#javahome
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"


## create emacs env file
## Emacsのeshell向けに$PATHをファイルへ書き出す
perl -wle \
  'do { print qq/(setenv "$_" "$ENV{$_}")/ if exists $ENV{$_} } for @ARGV' \
  PATH > ~/.emacs.d/shellenv.el


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

