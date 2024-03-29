# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

BASE_COLOR="red"
BASE_TEXT_COLOR="black"

POWERLEVEL9K_OS_ICON_BACKGROUND='grey'

POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
#POWERLEVEL9K_MULTILINE_LAST
POWERLEVEL9K_LINUX_UBUNTU_ICON="\uf31b "

if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    if [[ $ID == 'raspbian' ]]; then
        POWERLEVEL9K_LINUX_ICON='\uf315 '
        BASE_COLOR='red' #
        #POWERLEVEL9K_OS_ICON_FOREGROUND='white' # 007
    elif [[ $ID == 'centos' || $ID == 'redhat' ]]; then
        OS_ICON='\uF309' # 
        POWERLEVEL9K_OS_ICON_BACKGROUND='000' # black
        POWERLEVEL9K_OS_ICON_FOREGROUND='red' # 001
    fi
fi

if [[ $HOST == gnathosaurus ]]; then
    # Home desktop
    BASE_COLOR='cyan'
    BASE_TEXT_COLOR='white'
    POWERLEVEL9K_LINUX_ICON='\ufba7 '
elif [ -f /.dockerenv ]; then
    # In a docker container
    BASE_COLOR='blue'
    BASE_TEXT_COLOR='white'
    POWERLEVEL9K_LINUX_ICON='\uf0833 '
fi

# LEFT SIDE
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline ssh os_icon)

POWERLEVEL9K_DIR_SHOW_WRITABLE=true
#POWERLEVEL9K_DIR_PATH_HIGHLIGHT_BOLD=true

POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_DELIMITER=".."
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_folder_marker"
#POWERLEVEL9K_SHORTEN_FOLDER_MARKER=.git

#POWERLEVEL9K_DIR_HOME_FOREGROUND=$BASE_TEXT_COLOR
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_BACKGROUND=$BASE_COLOR
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=$BASE_TEXT_COLOR
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=$BASE_COLOR
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=$BASE_COLOR
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND="white"
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND="magenta"
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION=""
POWERLEVEL9K_DIR_PATH_SEPARATOR=" \ue0b1 "
POWERLEVEL9K_HOME_ICON='\uf015 '
POWERLEVEL9K_HOME_SUB_ICON='\uf015'
POWERLEVEL9K_FOLDER_ICON='\ue5ff'

#POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
POWERLEVEL9K_VCS_BRANCH_ICON='\ue0a0 '
#POWERLEVEL9K_HIDE_BRANCH_ICON=true

POWERLEVEL9K_OS_ICON_FOREGROUND='white'
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="white"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="cyan"
POWERLEVEL9K_SSH_FOREGROUND="white"
POWERLEVEL9K_SSH_BACKGROUND="grey"
#POWERLEVEL9K_HOST_ICON="\uE795 "
POWERLEVEL9K_HOST_ICON=""
POWERLEVEL9K_SSH_ICON="\ufa9e"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# RIGHT SIDE
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv time)

POWERLEVEL9K_VIRTUALENV_BACKGROUND='green'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'
POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=false
# Remove parentheses around virtual environment name
POWERLEVEL9K_VIRTUALENV_LEFT_DELIMITER=''
POWERLEVEL9K_VIRTUALENV_RIGHT_DELIMITER=''

POWERLEVEL9K_STATUS_ERROR_BACKGROUND='grey'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='red'
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_BACKGROUND='grey'

POWERLEVEL9K_PYTHON_ICON='\ue235'
POWERLEVEL9K_TIME_ICON=''
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0BC'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0BE'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""

#DEFAULT_USER='jtebert'
#P9KGT_BACKGROUND='dark'
#P9KGT_COLORS='light'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract z history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rr='if [ -f /var/run/reboot-required ]; then echo "reboot required"; else echo "No reboot needed"; fi'
alias lc='colorls'
alias open='xdg-open'
alias ip='curl icanhazip.com'
alias please='sudo $(fc -ln -1)'
alias dsort='du -a -d1 | sort -n'
alias am='find . -type f -exec stat \{\} --printf="%y\n" \; |                                                                                                                                  10:11:34  sort -n -r | head -n 1'
alias venvhere='source venv/bin/activate'
alias -- -="cd -"

## Past search history
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Managing dotfiles with git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# VTE configuration for Tilix from: https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Add path for local/custom functions
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# Add VS Code to path because it just seems to be in a stupid non-standard location???
export PATH="/usr/share/code:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# added by travis gem
[ -f /home/jtebert/.travis/travis.sh ] && source /home/jtebert/.travis/travis.sh

# Outrider pip/outdocker configuration
export PATH=$PATH:$HOME/.local/bin

export PATH=$PATH:/home/jebert/.spicetify

export PATH=$PATH:$HOME/.local/applications
