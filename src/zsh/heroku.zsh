### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Heroku shortcut
gphmm() {
  branch=`parse_git_branch`
  git push heroku $branch:master
}
