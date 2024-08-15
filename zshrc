### ---- Zsh Home --------------------
export ZSH="$HOME/.oh-my-zsh"

### ---- P10k instant prompt --------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi  

### ---- Zsh Theme --------------------
# ZSH_THEME="fino"
# ZSH_THEME="powerlevel10k/powerlevel10k"

### ---- Completion options and styling --------------------
zstyle ':completion:*' menu select # selectable menu
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'  # case insensitive completion
zstyle ':completion:*' special-dirs true # Complete . and .. special directories
zstyle ':completion:*' list-colors '' # colorize completion lists
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # colorize kill list
export WORDCHARS=${WORDCHARS//[\/]} # remove / from wordchars so that / is a seperator when deleting complete words
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# HISTFILE=$HOME/.zhistory
# SAVEHIST=1000
# HISTSIZE=999
# setopt share_history
# setopt hist_expire_dups_first
# setopt hist_ignore_dups
# setopt hist_verify

### ---- autocompletions --------------------
fpath=(~/.zsh/site-functions $fpath)
autoload -Uz compinit && compinit

### ---- Source other configs --------------------
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh

### ---- Zsh plugins --------------------
plugins=(
    brew
    coffee
    copybuffer
    copyfile
    copypath
    dirhistory
    git
    history
    sudo
    terraform
    toolbox
    torrent
    vscode
    web-search
    xcode
    zsh-autosuggestions
    zsh-interactive-cd
    zsh-navigation-tools
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

### ---- Colormap Function --------------------
function colormap() { 
  for i in {0..255};  do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f"  ${${(M)$((i%6)):#3}:+$'\n'};  done 
} 

### ---- Load powerlevel10k --------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### ---- Load homebrew --------------------
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

### ---- gpg agent config with pinentry-mac ---------
# export GPG_TTY=$(tty) # based on this guide https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e

### ---- load pyenv ---------
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

### add local bin to path
#export PATH=$HOME/bin:$PATH

### ---- load nvm ---------
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

### ---- load sdkman ---------
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

### ---- load conda ---------
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ipriyansh/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ipriyansh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ipriyansh/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ipriyansh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


### ---- ZSH Shortcuts alias -----------------------------------
alias c="clear"
alias up="sudo apt update"
alias ug="sudo apt -y full-upgrade"
alias fup="sudo apt update && sudo apt -y upgrade"
alias os-info-short="cat /etc/os-release"
alias clear-swap="sudo swapoff -a; sudo swapon -a"
alias sudo-i="sudo apt install -y"
alias postman="cd ~/Postman && ./Postman"
alias code="open -a 'Visual Studio Code'"
alias gprj="cd $HOME/Documents/Projects"
# alias shmobile="ssh "
alias vcode="/usr/share/code/bin/code"
alias setting.open.vscode="vcode ~/.config/Code/User/settings.json"


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


### ---- Load starship -----------------------------------
eval "$(starship init zsh)"
function set_win_title(){
    echo -ne "\033]0; codesniper.kali {$PWD} \007"
}
precmd_functions+=(set_win_title)

### ---- BugBounty -----------------------------------
export router="192.168.29.1"
export ip1="192.168.29.201"
export ip2="192.168.29.202"
export ip3="192.168.29.203"
export ip4="192.168.29.204"
export ip5="192.168.29.205"
export ip6="192.168.29.206"
export ip7="192.168.29.207"
export ip8="192.168.29.208"
