# -- PATH
# add /usr/local to PATH
export PATH=/usr/local/bin:$PATH
# and heroku
export PATH=/usr/local/heroku/bin:$PATH
# and local mysql install
export PATH=/usr/local/mysql/bin:$PATH
# and homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# and home
export PATH="$HOME/bin:$PATH"


# -- PROMPT
parse_git_branch() {
  if [ "$git branch" ]; then
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  else
    echo ''
  fi
}

# SKULL 💀
# Unicode: U+1F480 (U+D83D U+DC80), UTF-8: F0 9F 92 80
skull() {
  echo 💀
}

# PS1="\@ \w\$(parse_git_branch) \$(skull)  "
PS1="\@ \w\$(parse_git_branch) " # less cool

# -- GIT
[[ -e /usr/local/git/contrib/completion/git-completion.bash ]] && source /usr/local/git/contrib/completion/git-completion.bash

# -- Increase limit on number of files to watch because OS X's default is way too low
ulimit -n 1024

# -- ALIASES ARE AWESOME
# alias ls='ls -FlaG'

alias g='git'
alias gb='git branch'
alias gc='git commit -m'
alias gup='g u && g p'
alias gap='git add -p'
alias gphm='git push heroku master'

alias gdn='grunt dev && n'
alias gdt='grunt dev && grunt test'
alias n='npm run-script watch'

alias st='foreman start'
alias snlup='sudo /opt/nginx/sbin/nginx -c /opt/nginx/conf/nginx.conf'
alias cacheup='CACHE_CLASSES=1 bundle exec rails s -p 3001'
alias nginxdown='sudo /opt/nginx/sbin/nginx -s stop'
alias mongoup='mongod run --config /usr/local/etc/mongod.conf'
alias redisup='redis-server /usr/local/etc/redis.conf'

alias c='rails c'
alias s='rails s'
alias r='bundle exec rake'
alias be='bundle exec'
alias bpr='bundle exec pull-request'
alias accept='bundle exec accept-pull'
