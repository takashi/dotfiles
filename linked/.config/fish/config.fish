# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme toaster

set fish_plugins theme

# aliases
alias gpom="git pull origin master"
alias gpum="git pull upstream master"
alias ssh_tabipedia="ssh -p 1024 -i ~/.ssh/tabipedia tabipediastaff@49.212.217.187"
alias ssh_tabipedia_old="ssh -p 2052 -i ~/.ssh/tabipedia tabipediastaff@133.242.147.109"
alias ssh_tabimedia="ssh -p 12400 -i ~/.ssh/tabimedia tabipediastaff@153.121.64.207"
alias ssh_kakidashi="ssh -p 2400 -i ~/.ssh/nakagawa_rsa tak0303@kakidashi.com"
alias ssh_necco="ssh -p 1024 -i ~/.ssh/necco necco@160.16.90.15"
alias be="bundle exec"
alias server="python -m SimpleHTTPServer"
alias rm='gmv -f --backup=numbered --target-directory ~/.Trash/'
alias h="ghq"
alias ssh_colors_app="ssh -p 1024 -i ~/.ssh/colors colors@52.68.40.228"
alias ssh_colors_db="ssh -i ~/.ssh/colors-db colors@52.69.135.91 -p 1024"
# http://qiita.com/tsho/items/74b06a203cef6f007d61
alias subl='reattach-to-user-namespace subl'
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

set PATH /Users/tak0303/bin $PATH

function p
  peco | while read LINE
    eval $argv $LINE
  end
end

function c
  ghq list -p | p cd
end


# boxen root
set BOXEN_HOME /opt/boxen

# path
set PATH $BOXEN_HOME/rbenv/{shims,bin} $BOXEN_HOME/rbenv/plugins/ruby-build/bin $BOXEN_HOME/homebrew/bin $BOXEN_HOME/homebrew/sbin $BOXEN_HOME/bin $PATH

# man
set MANPATH $BOXEN_HOME/homebrew/share/man $MANPTH

# env
for f in "$BOXEN_HOME/env.d/*.sh";
  if test -f $f
    . $f
  end
end

set -x GOPATH $HOME

# version
set BOXEN_SETUP_VERSION (set GIT_DIR $BOXEN_HOME/repo/.git git rev-parse --short HEAD)
set -x BOXEN_HOME /opt/boxen
set -x PATH $BOXEN_HOME/homebrew/bin $BOXEN_HOME/homebrew/sbin $PATH
set -x PATH $BOXEN_HOME/bin $PATH

###### PARSE ERR: if [ -d "$BOXEN_HOME/repo/.git" ]; then
set -x BOXEN_SETUP_VERSION (env GIT_DIR=$BOXEN_HOME/repo/.git git rev-parse --short HEAD)
###### PARSE ERR: else
###### PARSE ERR:   echo "Boxen could not load properly!"
###### PARSE ERR: fi
# Expose basic setup paths. BOXEN_HOME is already exported at the top level.

set -x BOXEN_BIN_DIR /opt/boxen/bin
set -x BOXEN_CONFIG_DIR /opt/boxen/config
set -x BOXEN_DATA_DIR /opt/boxen/data
set -x BOXEN_ENV_DIR /opt/boxen/env.d
set -x BOXEN_LOG_DIR /opt/boxen/log
set -x BOXEN_SOCKET_DIR /opt/boxen/data/project-sockets
set -x BOXEN_SRC_DIR /Users/dbtlr/src
# Expose GitHub credentials

set -x BOXEN_GITHUB_LOGIN dbtlr
set -x HOMEBREW_ROOT /opt/boxen/homebrew
set -x HOMEBREW_CACHE /opt/boxen/cache/homebrew


set -x CFLAGS "-I$HOMEBREW_ROOT/include"
set -x LDFLAGS "-L$HOMEBREW_ROOT/lib"

# Allow bundler to use all the cores for parallel installation
set -x BUNDLE_JOBS 4

# Let the env know where Redis runs.

set -x BOXEN_REDIS_HOST 127.0.0.1
set -x BOXEN_REDIS_PORT 16379

set -x BOXEN_REDIS_URL "redis://$BOXEN_REDIS_HOST $BOXEN_REDIS_PORT/"

set -x BOXEN_MEMCACHED_PORT 21211
set -x BOXEN_MEMCACHED_URL "memcached://127.0.0.1 $BOXEN_MEMCACHED_PORT/"
set -x BOXEN_MONGODB_PORT 17017
set -x BOXEN_MONGODB_URL "mongodb://localhost (BOXEN_MONGODB_PORT)/"
set -x BOXEN_MYSQL_PORT 13306
set -x BOXEN_MYSQL_SOCKET /opt/boxen/data/mysql/socket
set -x BOXEN_MYSQL_URL "mysql://dbtlr@localhost:13306/"

set -x RBENV_ROOT $BOXEN_HOME/rbenv
set -x NODENV_ROOT $BOXEN_HOME/nodenv
set -x PHPENV_ROOT $BOXEN_HOME/phpenv


set -x RBENV_ROOT $BOXEN_HOME/rbenv
set -x NODENV_ROOT $BOXEN_HOME/nodenv
set -x PHPENV_ROOT $BOXEN_HOME/phpenv
set -x PATH $BOXEN_HOME/nodenv/shims $BOXEN_HOME/nodenv/bin $PATH
set -x PATH $BOXEN_HOME/rbenv/shims $BOXEN_HOME/rbenv/bin $BOXEN_HOME/rbenv/plugins/ruby-build/bin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x PATH /Users/tak0303/src/chromium.googlesource.com/chromium/tools/depot_tools $PATH
set -x PATH /Users/tak0303/.terraform $PATH

set -x PGDATA /opt/boxen/homebrew/var/postgres

set -x EDITOR vim

set -x DYLD_LIBRARY_PATH Users/tak0303/.gvm/pkgsets/go1.2.1/cwd/overlay/lib:/Users/tak0303/.gvm/pkgsets/go1.2.1/global/overlay/lib

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
