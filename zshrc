# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/gilesvangruisen/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

source ~/.zshrc.local

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

alias git=hub

alias tf=terraform
#
# alias fix-charge=$(sudo killall -STOP -c usbd)

# eval "$(rbenv init -)"

source $HOME/.zshenv
# source $HOME/.zshrc.local

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export GOPATH=$HOME/go
export GOBIN=/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOBIN

autoload forwardport
autoload pip_i_save

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

notify () {
  local title="$1"
  local message="$2"

  if [ -z $title ]; then
    title="Script"
  fi

  osascript -e "display notification \"$message\" with title \"$title\""
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
