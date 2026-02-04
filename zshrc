# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

[[ -r ~/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/znap
source ~/znap/znap.zsh

zstyle ':znap:*' repos-dir ~/ZnapRepos/

export LANG="en_US.UTF-8"

# `znap prompt` makes your prompt visible in just 15-40ms!
znap prompt sindresorhus/pure

# `znap source` starts plugins.
#znap source marlonrichert/zsh-autocomplete

# `znap eval` makes evaluating generated command output up to 10 times faster.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'

# `znap install` adds new commands and completions.

znap source zsh-users/zsh-completions
znap source zsh-users/zaw
znap source zsh-users/zsh-autosuggestions
znap source ael-code/zsh-colored-man-pages

#znap source zsh-users/zsh-history-substring-search
znap source softmoth/zsh-vim-mode

#bindkey '^R' history-incremental-search-backward
bindkey '^r' zaw-history
zstyle ':autocomplete:*' delay 0.1


# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
#ZSH_THEME="arrow"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

export DEFAULT_USER="daniel"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim="vim"
alias ll="ls --color=auto -hla"

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/projects/go/bin
export GOPATH=$HOME/projects/go
export GOBIN=$HOME/projects/go/bin
export GOPRIVATE=github.com

alias newtmux='tmux new-session -s $(basename `pwd`)'
alias gotest='go test $(go list ./... | grep -v /vendor/)'

znap fpath _kubectl 'kubectl completion  zsh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:$GOBIN"

export GPG_TTY=$(tty)

alias git-auto-sign='git config commit.gpgsign true'
alias k8s-switch-bitmovin-api='gcloud container clusters get-credentials bitmovin-api --zone europe-west1-b --project bitmovin-api'
alias k8s-switch-analytics='kubectl config use-context gke_bitmovin-bitanalytics-dev_europe-west1_analytics-processors-prod'
alias k8s-switch-player-licensing='gcloud beta container clusters get-credentials player-licensing-mgmt-cluster --region europe-west1 --project player-licensing-v2'
alias k8s-switch-legacy-api='gcloud beta container clusters get-credentials bitmovin-legacy-services --region europe-west1 --project bitmovin-api'
alias k8s-switch-frontend='gcloud container clusters get-credentials bitmovin-frontend-us-east1 --region us-east1 --project bitmovin-frontend'

alias going='cd $GOPATH/src/github.com/bitmovin/bitmovin-analytics-ingress'
alias gotoo='cd $GOPATH/src/github.com/bitmovin/bitmovin-analytics-tools'

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export GO111MODULE=on

#autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/vault vault
export PATH="/usr/local/opt/go@1.13/bin:$PATH"

export VAULT_ADDR="https://vault.bitmovin.systems"

#export CLOUDSDK_PYTHON=/usr/local/bin/python3

export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=/Users/daniel/Library/Python/3.9/bin:$PATH

export DOCKER_MOUNTED_VOLUMES_DIR=/Users/daniel/.docker-mounted-volumes

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daniel/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daniel/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daniel/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daniel/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# removed in favor of sdkman
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"

eval "$(zoxide init zsh)"

complete -o nospace -C /opt/homebrew/bin/terraform terraform

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export GOOGLE_CLOUD_PROJECT=analytics-dev-219807
export GEMINI_API_KEY=AIzaSyCjwY-79dKQeehAsmXcGF_R7qW_EoJ7kNc
export PATH=~/.npm-global/bin:$PATH

# Added by Antigravity
export PATH="/Users/daniel/.antigravity/antigravity/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
