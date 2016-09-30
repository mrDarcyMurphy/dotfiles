# enable zsh autocompletion
autoload -U promptinit
promptinit

autoload -U compinit
compinit
zmodload -i zsh/complist

# i have a color screen, you know
autoload colors; colors
export TERM='xterm-color'

# Base16 Shell
BASE16_SCHEME="default"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.default.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# Increase limit on number of files to watch because OS X's default is way too low
ulimit -n 2048

# source all the things
if [[ -e ~/.zsh ]]; then
  for a in `ls -C ~/.zsh/*.zsh`; do
    # echo sourcing $a
    source $a
  done
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
