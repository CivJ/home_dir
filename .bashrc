# export m=~/.m2/
export EDITOR=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient

#set this for docker.bash script
# export MACHINE_NAME='dev'	

source ~/git-completion.bash

# source /opt/pose/auto/docker.bash/docker.bash

alias dc='docker-compose'
alias doma='docker-machine'
alias ll='ls -lart'
alias sb='. ~/.bashrc'
alias mci='mvn clean install'
alias mnt='mvn clean install -Dmaven.test.skip=true'
alias mcis='mvn clean install -Dmaven.test.skip.exec=true'
alias ec='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
alias rvml='rvm list; rvm gemset list'
# alias mysql='/usr/local/mysql-percona-5.1.45-10/bin/mysql'
# alias start_mysql='launchctl load -F /Library/LaunchDaemons/com.opower.mysqld.plist'
# alias stop_mysql='launchctl unload -F /Library/LaunchDaemons/com.opower.mysqld.plist'

#eval "$(hub alias -s)" should I alias hub to git?
alias gs='git status -s'
alias gr='git remote -v'
alias gg='git log --oneline --graph --decorate'
alias gb='git checkout -b'
alias gca='git commit -am'
alias gup='git pull upstream master'
alias grad='git remote add'
alias gtls='git ls-tree -full-tree -r HEAD'
alias gd='git diff'

alias ber='bundle exec rake'
alias bek='bundle exec kitchen'

alias bi='bundle install'
alias be='bundle exec'
alias bc='bundle console'
alias bsu='ber spec:unit'

# alias ncc='npm cache clean'    
# alias fuckingnpm='rm -rf ./node_modules && ncc && npm i'

# Change open file limit
# ulimit -n 10000		       

function uploadGems(){
    bundle package
    for file in vendor/cache/*; do gem nexus $file; done
    rm -rf vendor/cache
}


function glr(){
    gem list --remote $1
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
