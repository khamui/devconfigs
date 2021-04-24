# Created by newuser for 5.7.1
eval "$(starship init zsh)"

# ANACONDA - JUPYTER
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/khamui/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/khamui/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/khamui/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/khamui/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias k='cd ~'
alias d='cd ~/Documents/Development'
alias jsd='cd ~/Documents/Development/JavaScript'
alias gl='cd ~/Documents/Development/JavaScript/github-repos/glance-app'
alias gla='cd ~/Documents/Development/JavaScript/github-repos/glance-app; au run --port 9000 --watch'
alias gls='node ~/Documents/Development/JavaScript/glance-app/github-repos/server/server.js'
alias dt='cd ~/Desktop'
alias fa='cd ~/Documents/Development/JavaScript/github-repos/forest-app'
alias fas='cd ~/Documents/Development/JavaScript/github-repos/forest-app; ng serve'
alias rpg='cd ~/Documents/Development/JavaScript/react-pground'
alias lqssh='ssh -i id_ed25519 kha@conway-ssh.liqd.net'
alias lq='cd ~/Documents/Development/LIQD'
alias venv='source myvenv/bin/activate'

# command aliases
alias ls='ls -alrt -G'
alias s='git status'
alias b='git branch'
alias a='git add .'
alias co='git checkout '
alias po='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias hist='git log --oneline --graph --decorate --all'
alias zshreload='source ~/.zshrc'
alias cp='cp'
alias mv='mv'
alias weather='curl v2.wttr.in'
alias upconfig='cp -R ~/Documents/Development/devconfigs/{.vim,.gitconfig,.zshenv,.zshrc,.zshrceval} ~/'
alias puconfig='cp -rf ~/{.vim,.gitconfig,.zshenv,.zshrc,.zshrceval} ~/Documents/Development/devconfigs/'
alias jup='cd ~/Documents/Development/Jupyter; jupyter-lab --browser=chrome'
alias jupn='cd ~/Documents/Development/Jupyter; jupyter notebook --browser=chrome'

# work aliases
alias rd='cd $ENV'
alias wb='cd $ENV/webrand'
alias dy='cd $ENV/desygner'
alias wbb='cd $ENV/webrand/builder'
alias wbg='cd $ENV/webrand/builder; gulp build && gulp watch'
alias dyg='cd $ENV/desygner/utils/build; gulp watch'
alias sc='cd $ENV/_helpers/sync-tool; npm start'
alias lqdeploy='ssh build@build.liqd.net deploy '
alias lqbuild='ssh build@build.liqd.net build '

# env functions
alias setw=setenv_work
alias setr=setenv_remote

# fzf searcher
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^[[A' fzf-history-widget

cd:wb() {
	cd /Users/khamui/Desygner/remote_dev/webrand
}

wb:install () {
  cd:wb
  cd builder
  npm install
  jspm install
  sed -i '' -E 's,"(github|npm)\:\*": "../web/vendor,"\1\:\*": "vendor,g' config.js
}

wb:g:a() {
  wb:install
  gulp bundle
  gulp build
  gulp watch
}

wb:s() {
	unison -sshargs="-i /Users/khamui/.ssh/kha_office" /Users/khamui/Desygner/remote_dev/webrand ssh://platypus@192.168.1.100//home/platypus/dev/data/sync/kha/webrand 2>/dev/tty -batch -confirmbigdel=false -perms=0 -prefer newer -ignore="Name node_modules" -ignore="Name bower_components" -ignore="Name var/cache" -ignore="Name ./vendor" -ignore="Name .git"
}

o:web() {
  start='open -a safari '
  calamari='https://desygner.calamari.io'
  gsuite='https://workspace.google.com/dashboard'
  youtrack='https://desygner-team.myjetbrains.com/youtrack/'
  beanstalk='https://inkive.beanstalkapp.com'
  
  eval $start$calamari
  eval $start$gsuite
  eval $start$youtrack
  eval $start$beanstalk
}
