# Created by newuser for 5.7.1
eval "$(starship init zsh)"

# navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias k='cd ~'
alias d='cd ~/Documents/Development'
alias jsd='cd ~/Documents/Development/JavaScript'
alias gl='cd ~/Documents/Development/JavaScript/glance'
alias gla='cd ~/Documents/Development/JavaScript/glance; au run --port 9000 --watch'
alias gls='node ~/Documents/Development/JavaScript/glance/server/server.js'
alias dt='cd ~/Desktop'

# command aliases
alias ls='ls -alrt -G'
alias s='git status'
alias b='git branch'
alias a='git add .'
alias hist='git log --oneline --graph --decorate --all'
alias zshreload='source ~/.zshrc'
alias cp='cp -i'
alias mv='mv -i'
alias weather='curl v2.wttr.in'
alias upconfig='cp ~/Documents/Development/devconfigs/{.hyper.js,.gitconfig,.zshenv,.zshrc,.zshrceval} ~/'

# work aliases
alias rd='cd $ENV'
alias wb='cd $ENV/webrand'
alias wbb='cd $ENV/webrand/builder'
alias wbg='cd $ENV/webrand/builder; gulp build && gulp watch'
alias sc='cd $ENV/_helpers/sync-tool; npm start'

# env functions
alias setw=setenv_work
alias setr=setenv_remote