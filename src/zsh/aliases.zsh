# BASICS
alias ls='ls -AFhgGo'

# GIT
alias g=git
alias gb='git branch'
alias gc='git commit -m'
alias gap='git add -p'
alias gpu=gpu
alias gphm='git push heroku master'
alias wbr=parse_git_branch
alias guud='git pull upstream develop'
alias gpl='git push --force-with-lease'
# alias gdso='git checkout -b DSO-"$1"'

# NODE
alias gdn='grunt dev && n'
alias gdt='grunt dev && grunt test'
# alias rm=trash

# # NODE-WEBKIT
# alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

# RUBY & RAILS
alias be='bundle exec'
alias r='bundle exec rake'
alias rc='rails console'
alias rs='rails server'

# VAGRANT
alias vm='vagrant'

# UPPERS
alias mongoup='mongod -v -f /usr/local/etc/mongod.conf'
alias pgup='postgres -D /usr/local/var/postgres'
alias redisup='redis-server /usr/local/etc/redis.conf'
alias st='foreman start'

# DOWNERS
alias nginxdown='sudo /opt/nginx/sbin/nginx -s stop'
alias pgdown='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# AUTOMATION
alias nbr=new-branch
