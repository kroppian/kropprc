# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

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
plugins=(git git-flow)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:${HOME}/.bin:/sw/bin:/usr/local/opt/jenv:${HOME}/.bin:/sw/bin:/usr/local/opt/jenv"
# export MANPATH="/usr/local/man:$MANPATH"

if [[ -n $(echo ${HOME} | grep '^/Users') ]]
then
  # find via "brew --prefix coreutils"
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$PATH"

fi

if [[ -e /mnt/c/ ]]
then

  export JAVA_HOME=/

else

  export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/

fi

#
# Git
#
git config --global core.excludesfile '~/.gitignore'

#
# rbenv
#
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

bindkey -v

DISABLE_AUTO_TITLE=true

setopt NOBEEP

#source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

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
alias rm="rm -i"
alias cellar="echo /usr/local/Cellar/"
alias view="vim -R"
alias WinSCP="wine ~/.wine/drive_c/Program\ Files/WinSCP/WinSCP.exe 1> /dev/null 2> /dev/null &"
alias mux="tmuxinator"
alias mamp="cd /Applications/MAMP/"
alias mampsql="/Applications/MAMP/Library/bin/mysql"

alias gint="cat ~/.gitconfig"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


zstyle -s ':completion:*:hosts' hosts _ssh_config
[[ -r ~/.ssh/config ]] && _ssh_config+=($(cat ~/.ssh/config | sed -ne 's/Host[=\t ]//p'))
zstyle ':completion:*:hosts' hosts $_ssh_config

export TERM=xterm-256color

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ian/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ian/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ian/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ian/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
eval "$(dircolors $HOME/.dir_colors)"


