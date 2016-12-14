export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GOPATH="$HOME/projects/go"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export SCALA_HOME="/opt/scala-2.11.8"
export POSTGRES_HOME="/Applications/Postgres.app/Contents/Versions/9.5"
export PATH="/usr/local/bin:$PATH:$SCALA_HOME/bin:$POSTGRES_HOME/bin"
export EDITOR=nvim
export NODE_ENV="dev"
export HISTCONTROL="ignoreboth"
export XDG_CONFIG_HOME="$HOME/.config"
alias ls='ls -GFh'
alias l='ls '
alias ll='ls -hal'
alias ls="exa"
echo ''
echo '         /(_M_)\ '
echo '        |       |'
echo '         \/~V~\/ '
echo ''
echo ''
alias vim="nvim"
alias vi="vim"
alias gst="git status"
alias gs="gst"
alias gco="git checkout"
alias gd="git diff"
alias gc="git commit -m"
alias ga="git add"
alias be="bundle exec"
alias ber="bundle exec rake"
alias rbp="git pull && bundle install && bundle exec rake db:migrate && npm install"
alias deploy_ninja="bundle exec ey deploy -e shop_staging"
alias showpath="echo \"${PATH//:/$'\n'}\""
alias gerp="grep"
alias dock="docker-machine start local; eval\$(docker env local)"
alias tmux="tmux -2"

export NVM_DIR="/Users/johnfulton/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
eval "$(~/src/kumo/bin/kumo init -)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source /opt/boxen/env.sh
source ~/.kumo/non-production-creds
