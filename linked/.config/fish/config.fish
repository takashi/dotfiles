## git
alias gpom="git pull origin master"
alias gpum="git pull upstream master"

## bundler
alias be="bundle exec"

## server
alias server="python -m http.server 8080"

## move to trash
alias rm='gmv -f --backup=numbered --target-directory ~/.Trash/'

## ghq
alias h="ghq"

## monkey patch http://qiita.com/tsho/items/74b06a203cef6f007d61
alias subl='reattach-to-user-namespace subl'

set PATH $HOME/bin $PATH
set -x PATH /usr/local/bin $PATH

function p
  peco | while read LINE
    eval $argv $LINE
  end
end

function c
  ghq list -p | p cd
end

# rbenv
#eval "$(rbenv init -)";
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# pyenv
set -x PATH $HOME/.pyenv/shims $PATH
pyenv rehash >/dev/null ^&1

# direnv
eval (direnv hook fish)

set -x GOPATH $HOME

# Allow bundler to use all the cores for parallel installation
set -x BUNDLE_JOBS 4

set -x PGDATA /usr/local/var/postgres

set -x EDITOR vim

ssh-add ~/.ssh/takashi

