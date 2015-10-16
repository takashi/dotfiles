# Path to Oh My Fish install.
set -gx OMF_PATH /Users/takashi/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/takashi/.config/omf

# aliases

## git
alias gpom="git pull origin master"
alias gpum="git pull upstream master"

## bundler
alias be="bundle exec"

## server
alias server="python -m SimpleHTTPServer"

## move to trash
alias rm='gmv -f --backup=numbered --target-directory ~/.Trash/'

## ghq
alias h="ghq"

## monkey patch http://qiita.com/tsho/items/74b06a203cef6f007d61
alias subl='reattach-to-user-namespace subl'

set PATH $HOME/bin $PATH
set -x PATH /usr/local/bin /usr/local/sbin $PATH

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
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set -x GOPATH $HOME

# Allow bundler to use all the cores for parallel installation
set -x BUNDLE_JOBS 4

set -x PGDATA /usr/local/var/postgres

set -x EDITOR vim

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
