## git
alias gpom="git pull origin master"
alias gpum="git pull upstream master"
alias gbr="git browse-remote --pr"

## bundler
alias be="bundle exec"

## server
alias server="python -m http.server 8080"

## move to trash
alias rm='gmv -f --backup=numbered --target-directory ~/.Trash/'

## ghq
alias h="ghq"

## docker
alias dc="docker-compose"

## sublime
alias open_conflicts="git diff --name-only | uniq | xargs subl"

set PATH /usr/local/bin $PATH
set HOMEBREW_BREWFILE /Users/takashi/src/github.com/takashi/Brewfile/Brewfile
set HOMEBREW_CASK_OPTS "--appdir=~/Applications --caskroom=/etc/Caskroom"

function p
  peco | while read LINE
    eval $argv $LINE
  end
end

function c
  ghq list -p | p cd
end

# brew-wrap does not support fish shell.
# if [ -f (brew --prefix)/etc/brew-wrap ]
#   source (brew --prefix)/etc/brew-wrap
# end

# rbenv
#eval "$(rbenv init -)";
set -x PATH $HOME/.rbenv/shims $PATH
set -x PATH (yarn global bin) $PATH

set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH



rbenv rehash >/dev/null ^&1

# pyenv
set -x PATH $HOME/.pyenv/shims $PATH
pyenv rehash >/dev/null ^&1

# direnv
eval (direnv hook fish)

set -x GOPATH $HOME

set -x PATH $GOPATH/bin $PATH

# Allow bundler to use all the cores for parallel installation
set -x BUNDLE_JOBS 4

set -x PGDATA /usr/local/var/postgres

set -x EDITOR vim

ssh-add ~/.ssh/nakagawat

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/takashi/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/takashi/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/takashi/Downloads/google-cloud-sdk/path.fish.inc'; end; end
