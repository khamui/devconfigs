# Lines configured by zsh-newuser-install
HISTFILE=~/.hyperhistfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# KHA CUSTOM ADDS
eval "$(starship init zsh)" eval source <("/usr/local/bin/starship" init zsh --print-full-init)
# KHA CUSTOM ALIASES
alias ls='ls -alrt -G'
alias k='cd ~'
alias d='cd ~/dev'
alias wb='cd ~/dev/webrand'
alias wbb='cd ~/dev/webrand/builder'
alias wbg='cd ~/dev/webrand/builder; gulp build && gulp watch'
alias dt='cd ~/Desktop'
alias sc='cd ~/dev/_helpers/sync-app; npm start'
alias s='git status'
alias a='git add .'
alias stg='git checkout staging'
alias co='git checkout '
alias zshreload='source ~/.zshrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cal='gcal --starting-day=1'             # print simple calendar for current month
alias weather='curl v2.wttr.in'               # print weather for current location (https://github.com/chubin/wttr.in)

function sync-webrand() {
  unison -sshargs="-i /Users/kha/.ssh/id_rsa" /Users/kha/dev/webrand ssh://platypus@192.168.1.100//home/platypus/dev/data/sync/kha/webrand -batch -confirmbigdel=false -perms=0 -prefer newer -ignore="Name node_modules" -ignore="Name bower_components" -ignore="Name var/cache"
}
