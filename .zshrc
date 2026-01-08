

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$(brew --prefix)/opt/python@3.12/libexec/bin:$PATH"
export PATH="$PATH:/Users/brian.kwon/Library/Python/3.9/bin"
export PATH="${HOME}/.local/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export AWS_PROFILE=buoy-product-prod
export AWS_DEFAULT_OUTPUT=json
export AWS_DEFAULT_REGION=us-east-1
eval "$(direnv hook zsh)"  # or zsh, fish, etc.
export PULUMI_CONFIG_PASSPHRASE="w8HWb8cLkdtFsBv8fQPU"
export PULUMI_BACKEND_URL="s3://breakout-pulumi-state"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins+=(git zsh-autosuggestions zsh-syntax-highlighting zsh-vi-mode)

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"
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
alias zc="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# AWS
alias lbu="export AWS_PROFILE=buoy-product-prod-delivery && aws sso login"
alias lbua="export AWS_PROFILE=buoy-analytics-prod && aws sso login"
alias lbr="export AWS_PROFILE=breakout && aws sso login"
alias lbra="export AWS_PROFILE=breakout-admin && aws sso login"
alias lbur="aws sso login --profile buoy-product-prod-research"

alias zs="source ~/.zshrc"

# GIT
alias gc="git commit"
alias gca="git commit --amend"
alias gchb="git checkout -b"
alias gaa="git add --all"
alias gap="git add -p"
alias gl="git pull"
alias gp="git push"
alias glom="git pull origin main"
alias gloms="git pull origin master"
alias glo="git pull origin"
alias gfgc="git fetch && git checkout"
alias gfgcm="git fetch && git checkout main"

# DOCKER
alias dcul="docker compose -f docker-compose.local.yml up"
alias dcb="docker compose build"
alias dcu="docker compose up"
alias dcd="docker compose down"
alias d="docker"
alias dip="docker image prune -a -f"
alias dcp="docker container prune -f"
alias dvp="docker volume prune -f"

# BIT
alias bs="bit start"
alias bb="bit build"
alias bi="bit import"
alias bst="bit status"


# KUBERNETES
alias k="kubectl"
alias kgp="kubectl get pods"

alias ls="eza --icons=always --color=always --long --no-filesize --no-time --no-permissions --no-user "

# WINDMILL
alias wm="wmill"
alias wmsp="wmill script push"
alias wmsg="wmill script generate-metadata"
alias wmsc="wmill script bootstrap"


alias p="pulumi"
alias k9sc="nvim ~/Library/Application Support/k9s/"


# DOTFILES
alias dots="git --git-dir=/Users/brian.kwon/.config/dot/dotfiles/.git --work-tree=/Users/brian.kwon/.config/dot/dotfiles status"
alias dotaa="git --git-dir=/Users/brian.kwon/.config/dot/dotfiles/.git --work-tree=/Users/brian.kwon/.config/dot/dotfiles add --all"
alias dotc="git --git-dir=/Users/brian.kwon/.config/dot/dotfiles/.git --work-tree=/Users/brian.kwon/.config/dot/dotfiles commit -m"
alias dotp="git --git-dir=/Users/brian.kwon/.config/dot/dotfiles/.git --work-tree=/Users/brian.kwon/.config/dot/dotfiles push"
alias dotl="git --git-dir=/Users/brian.kwon/.config/dot/dotfiles/.git --work-tree=/Users/brian.kwon/.config/dot/dotfiles pull"


export PATH="$PATH:/Users/brian.kwon/bin"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias config='/usr/bin/git --git-dir=/Users/brian.kwon/dotfiles/dotfiles/.git --work-tree=/Users/brian.kwon/dotfiles/dotfiles'



# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}


export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# fzf previews
show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}


export FZF_DEFAULT_OPTS="\
--border \
--height 40% \
--layout=reverse \
--color=bg+:#141A1F \
--color=fg:#B2C1CC \
--color=fg+:#B2C1CC \
--color=hl:#52697A \
--color=hl+:#52697A \
--color=border:#3D4F5C \
--color=info:#75BDF0 \
--color=marker:#A875F0 \
--color=pointer:#FF007C \
--color=prompt:#FF007C \
--color=spinner:#FF007C \
--color=header:#7580F0 \
"

eval "$(fzf --zsh)"
# fzf git
source ~/fzf-git.sh/fzf-git.sh
# BAT
export BAT_THEME="GitHub"
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'



if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi
