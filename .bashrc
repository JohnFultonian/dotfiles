export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="$PATH"
export EDITOR=vim
export GOPATH="$HOME/projects/go"
export JAVA_HOME="/usr/lib/jvm/default"
export SCALA_HOME="/opt/scala-2.11.8"
export POSTGRES_HOME="/Applications/Postgres.app/Contents/Versions/9.5"
export PATH="/usr/local/bin:$PATH:$SCALA_HOME/bin:$POSTGRES_HOME/bin"
export EDITOR=vim
export NODE_ENV="dev"
alias ls='ls -GFh --color'
alias l='ls '
alias ll='ls -GFhal'
echo ''
echo '         /(_M_)\ '
echo '        |       |'
echo '         \/~V~\/ '
echo ''
echo ''
[[ -f ~/.myobrc ]] && source ~/.myobrc
alias gst="git status"
alias gco="git checkout"
alias gd="git diff"
alias gp="echo 'REMEMBER TO'; echo '================================================'; echo '1) Check the build pipeline'; echo '2) Run the tests'; echo '3) Run style check'; echo '================================================'; sleep 2; git pull --rebase"
alias gc="git commit -m"
alias ga="git add"

if type -P nvim > /dev/null; then
  alias vim="nvim"
fi

export NVM_DIR="/Users/johnfulton/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
