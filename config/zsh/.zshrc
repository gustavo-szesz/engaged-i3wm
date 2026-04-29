# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if this is set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this list instead of looking in $ZSH/themes/
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled
# zstyle ':omz:update' mode auto
zstyle ':omz:update' mode reminder
# zstyle ':omz:update' frequency 13

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to show an error icon instead of the red dots.
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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom configuration path?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    docker
    docker-compose
    node
    npm
    yarn
    zsh-syntax-highlighting
    zsh-autosuggestions
    history-substring-search
    web-search
    alias-finder
    command-not-found
    extract
    z
)

source $ZSH/oh-my-zsh.sh

# ============================================================================
# USER CONFIGURATION
# ============================================================================

# Export variables
export LANG=en_US.UTF-8
export EDITOR="nano"
export VISUAL="nano"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nano'
fi

# ============================================================================
# ALIASES
# ============================================================================

# General
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias cd..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# Docker
alias dps='docker ps'
alias dpa='docker ps -a'
alias dimg='docker images'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcl='docker-compose logs -f'

# Node.js
alias npm-update='npm install -g npm@latest'
alias npm-list='npm list -g --depth=0'
alias yarn-global='yarn global list'

# Development
alias reload='source ~/.zshrc'
alias zshconfig='nano ~/.zshrc'
alias i3config='nano ~/.config/i3/config'

# QA / Testing
alias screenshot='scrot ~/Pictures/screenshot-$(date +%Y%m%d-%H%M%S).png && notify-send "Screenshot saved!"'
alias firefox-dev='firefox --devtools'
alias chrome-dev='google-chrome --new-window --disable-plugins --disable-sync --user-data-dir=/tmp/chrome-dev'

# ============================================================================
# FUNCTIONS
# ============================================================================

# Create a new directory and enter it
mkcd() {
  mkdir -p "$@" && cd "$_"
}

# Extract archives
extract() {
  if [[ -f $1 ]]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Quick npm start with nodemon
dev() {
  npm install && npm run dev
}

# Node debugging
debugnode() {
  node --inspect-brk="$@"
}

# ============================================================================
# HISTORY SETTINGS
# ============================================================================

HISTSIZE=50000
SAVEHIST=50000
HISTFILE=$HOME/.zsh_history

# Share history between sessions
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# ============================================================================
# ZSH OPTIONS
# ============================================================================

# Better completion
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL
setopt EXTENDED_GLOB
setopt GLOB_COMPLETE
setopt MENU_COMPLETE

# ============================================================================
# KEY BINDINGS
# ============================================================================

# Use arrow keys for history search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ============================================================================
# SYNTAX HIGHLIGHTING
# ============================================================================

# Syntax highlighting (zsh-syntax-highlighting)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[function]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[error]='fg=red,bold'

# Auto suggestions color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# ============================================================================
# PATH
# ============================================================================

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Node.js NVM (if using nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ============================================================================
# POWERLEVEL10K CONFIGURATION
# ============================================================================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
