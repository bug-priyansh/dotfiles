### ---- Zsh Home --------------------
# >>> ZSH initialize >>>
export ZSH="$HOME/.oh-my-zsh"
# <<< ZSH initialize <<<


### ---- P10k instant prompt --------------------
# >>> p10k initialize >>>
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi  
# <<< p10k initialize <<<


### ---- ohmyzsh Theme --------------------
# >>> ohmyzsh initialize >>>
# ZSH_THEME="fino"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# <<< ohmyzsh initialize <<<
source $ZSH/oh-my-zsh.sh


### ---- Completion options and styling --------------------
# >>> zstyle initialize >>>
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
# <<< zstyle initialize <<<


### ---- autocompletions --------------------
# >>> autocompletions initialize >>>
fpath=(~/.zsh/site-functions $fpath)
autoload -Uz compinit && compinit
# <<< autocompletions initialize <<<


### ---- Source other configs --------------------
# >>> other-config initialize >>>
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh
# <<< other-config initialize <<<


### ---- Zsh plugins --------------------
# >>> plugins initialize >>>
plugins=(
    brew coffee copybuffer copyfile copypath dirhistory git history
    sudo terraform toolbox torrent vscode web-search xcode
    zsh-autosuggestions zsh-interactive-cd zsh-navigation-tools
    zsh-syntax-highlighting
    )
# <<< plugins initialize <<<


### ---- Colormap Function --------------------
# >>> colormap initialize >>>
function colormap() { 
  for i in {0..255};  do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f"  ${${(M)$((i%6)):#3}:+$'\n'};  done 
} 
# <<< colormap initialize <<<


### ---- Load powerlevel10k --------------------
# >>> powerlevel10k initialize >>>
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# <<< powerlevel10k initialize <<<


### ---- Load homebrew --------------------
# >>> homebrew initialize >>>
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# <<< homebrew initialize <<<


### ---- gpg agent config with pinentry-mac ---------
# >>> gpg agent initialize >>>
# export GPG_TTY=$(tty) # based on this guide https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e
# <<< gpg agent initialize <<<

### ---- load pyenv ---------
# >>> pyenv initialize >>>
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

### add local bin to path
#export PATH=$HOME/bin:$PATH
# <<< pyenv initialize <<<


### ---- load nvm ---------
# >>> nvm initialize >>>
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# <<< nvm initialize <<<


### ---- load sdkman ---------
# >>> sdkman initialize >>>
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# <<< sdkman initialize <<<


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
# >>> Alias initialize >>>
# system
alias c="clear" # clear the terminal
alias up="sudo apt update" # update the system
alias ug="sudo apt -y full-upgrade" # upgrade the system
alias fup="sudo apt update && sudo apt -y upgrade" # update and upgrade the system
alias os-info-short="cat /etc/os-release"
alias clear-swap="sudo swapoff -a; sudo swapon -a" # clear swap memory
alias sudo-i="sudo apt install -y" # Install Applications
alias o="nautilus ." # Open the current directory in Finder
alias ghost="gs" # replace ghostscript command so git status works properly

# dir
alias gprj="cd $HOME/Documents/Projects" # open project folder in terminal   
alias vsetting="code ~/.config/Code/User/settings.json" # open visual studio code setting in vscode

# applications
alias postman="cd ~/Postman && ./Postman" # open postman 
# alias code="open -a 'Visual Studio Code'"
alias code="/usr/share/code/bin/code" # open vscode

# git
alias gi='git init'
alias gro='git remote add origin'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit -m'
alias gpsh='git push'
alias gpsho='git push -u origin'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

# pnpm
alias p="pnpm"
alias pi="pnpm install"
alias pa="pnpm add"
alias pd="pnpm dev"
alias pb="pnpm build"
alias pr="pnpm run"
alias psd="pnpm start:dev"

# BugBounty
# <<< Alias initialize <<<


### ---- Load starship -----------------------------------
# >>> starship initialize >>>
eval "$(starship init zsh)"
function set_win_title(){
    echo -ne "\033]0; codesniper.kali {$PWD} \007"
}
precmd_functions+=(set_win_title)
# <<< starship initialize <<<
