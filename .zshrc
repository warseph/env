# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd npm brew bundler)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:/usr/local/bin:/bin:/usr/bin:/usr/sbin:/sbin:~/bin"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=$PATH:~/bin:~/Applications/ADT/sdk/platform-tools:/opt/chefdk/bin
if which -s rbenv > /dev/null ; then
  eval "$(rbenv init -)"
fi
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8


export DISABLE_UPDATE_PROMPT=true


alias assets_precompile="cd ~/devel/vagrant-dev-machine &&vagrant ssh dev_machine -c 'cd /mnt/app/current && bundle install && bundle exec rake assets:precompile && bundle exec rake assets:clean' && cd ~/devel/comparador"

alias dev-logs="cd ~/devel/vagrant-dev-machine && multitail --mergeall -l 'vagrant ssh -- sudo tail -f /var/log/upstart/sidekiq-comparador.log' -cT ANSI -l 'vagrant ssh dev_machine -- tail -f /mnt/app/current/log/development.log'"

alias vagrant-reload="rm -r .vagrant/machines/*/virtualbox/synced_folders;vagrant reload"


export EDITOR="code -w"
export DEFAULT_USER=erabinovich
export ANDROID_HOME=/Users/erabinovich/Library/Android/sdk

# TABCOLOR=$(echo -e "\033]6;1;bg;red;brightness;130\a\033]6;1;bg;blue;brightness;130\a\033]6;1;bg;green;brightness;255\a")
# PROMPT=$TABCOLOR$PROMPT

eval "$(thefuck --alias)"

alias release="ssh backup -t 'bash -ic tmux-release'"
export HISTCONTROL=ignoreboth
alias activator=~/Eclipse\\\ Workspace/activator-1.3.10-minimal/bin/activator


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

export PATH="bin:node_modules/.bin:$PATH"

man() {
  env \
    LESS_TERMCAP_md=$'\e[1;36m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;40;92m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;32m' \
      man "$@"
}

# The following sets the timeout cancellation for
# the current shell; you can always put this in
# ~/.bashrc, ~/.profile, ~/.zshrc, etc. to make
# it permanent.
export LPASS_AGENT_TIMEOUT=0

ssh-add -A  >/dev/null 2>&1
