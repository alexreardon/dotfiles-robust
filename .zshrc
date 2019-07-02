# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
USERNAME=$(id -un);

export ZSH="/Users/$USERNAME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Base
# ZSH_THEME="ddc-prompt"

# Spaceship
# ZSH_THEME="spaceship"

# Pure propt + theme
ZSH_THEME="" # left empty to tell oh-my-zsh not to load a theme


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Must be loaded after source $ZSH/oh-my-zsh.sh
# https://github.com/sindresorhus/pure#oh-my-zsh
autoload -U promptinit; promptinit
prompt pure

# One time login for ssh-add on startup
# https://unix.stackexchange.com/questions/90853/how-can-i-run-ssh-add-automatically-without-password-prompt
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
alias editor="code"

# Alias dirs
alias go/code="cd ~/code"

# Sets vim version
export EDITOR=`which vim`

# Opens github repo
function github() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    following=`git status -sb | head -1 | sed 's/.*\.\.\.//'`

    if [[ $following == *"/"* ]]; then
      branch=${following#*/}
      repo=${following%/*}
    else
      branch='master'
      repo=''
    fi

    repoURL=`git ls-remote --get-url ${repo}`;
    repoURL=${repoURL/:/\/}
    repoURL=${repoURL#git@*}
    repoURL=${repoURL%\.git*}
    repoURL="https://${repoURL}/tree/${branch}"
    open "${repoURL}"
  else
    echo "Not a git repo"
  fi
}

export NVM_DIR="/Users/${USERNAME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# fix commands with 'fix' command
eval $(thefuck --alias fix)


# add-zsh-hook chpwd load-nvmrc
# load-nvmrc
