# !/bin/bash

### ---- Updating and Upgrading --------------------------------
# Update and upgrade the system
    echo "Updating and upgrading the system..."
    sudo apt update -y 
    clear
    sudo apt full-upgrade -y
    clear
    sudo apt autoremove -y
    clear

    echo "Installing Essential Builds..."
    sudo apt install -y zip unzip git wget curl tmux


### ---- neofetch --------------------------------
    echo "Installing neofetch"
    sudo apt install -y neofetch
    neofetch
    clear
    echo "Installed neofetch Successfully" 

### ---- brew --------------------------------
    echo "Installing Gnomt-Terminal"
    sudo apt install -y gnome-terminal
    clear
    echo "Installed neofetch Successfully" 
    echo "Installed Gnomt-Terminal Successfully"

### ---- ohmyzsh --------------------------------
    echo "oh-my-zsh not found"
    echo "Installing oh-my-zsh"
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    clear
    echo "Installed neofetch Successfully" 
    echo "Installed Gnomt-Terminal Successfully"
    echo "Installed oh-my-zsh Successfully"

### ---- powerlevel10k --------------------------------
    echo "powerlevel10k not found"
    echo "Installing powerlevel10k"
    sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    clear
    echo "Installed neofetch Successfully"
    echo "Installed Gnomt-Terminal Successfully"
    echo "Installed oh-my-zsh Successfully"
    echo "Installed powerlevel10k Successfully"

### ---- starship --------------------------------
    echo "starship not found"
    echo "Installing starship"
    curl -sS https://starship.rs/install.sh | sh
    clear
    echo "Installed neofetch Successfully"
    echo "Installed Gnomt-Terminal Successfully" 
    echo "Installed oh-my-zsh Successfully"
    echo "Installed powerlevel10k Successfully"
    echo "Installed starship Successfully"

### ---- powershell --------------------------------
    echo "powershell not found"
    echo "Installing powershell"
    sudo apt install -y powershell
    clear
    echo "Installed neofetch Successfully" 
    echo "Installed Gnomt-Terminal Successfully" 
    echo "Installed oh-my-zsh Successfully"
    echo "Installed powerlevel10k Successfully"
    echo "Installed starship Successfully"
    echo "Installed powershell Successfully"

### ---- brew --------------------------------
    echo "brew not found"
    echo "Installing brew"
    bash brew-install.sh
    clear
    echo "Installed neofetch Successfully" 
    echo "Installed Gnomt-Terminal Successfully" 
    echo "Installed oh-my-zsh Successfully"
    echo "Installed powerlevel10k Successfully"
    echo "Installed starship Successfully"
    echo "Installed powershell Successfully"
    echo "Installed brew Successfully" 

### ---- Linux Configs --------------------------------
    # icons
    unzip icons.zip
    mv icons .icons
    mv .icons ~/

    # themes
    unzip themes.zip
    mv themes.zip .themes.zip
    mv .themes.zip ~/

    # fonts
    mv .fonts ~/

    # neofetch
    mv ~/.config/neofetch/config.conf ~/.config/neofetch/config.conf.bak
    mv config/neofetch/config.config ~/.config/neofetch/config.conf

    # zshrc
    mv ~/.zshrc ~/.zshrc.bak
    mv .zshrc ~/.zshrc

    # oh-my-zsh
    unzip oh-my-zsh.zip
    mv oh-my-zsh/custom/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins
    mv oh-my-zsh/custom/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins

    # powerlevel10k
    mv ~/.p10k.zsh ~/.p10k.zsh.bak
    mv .p10k.zsh ~/.p10k.zsh

    # starship
    mv .config/starship.toml ~/.config/starship.toml

    # powershell
    mv ~/.config/powershell/Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1.bak
    mv .config/powershell/Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1
    
    # Gnome-Terminal Profile
    echo "Gnome Terminal Profile not found"
    echo "loading Gnome Terminal Profile"
    dconf load /org/gnome/terminal/legacy/profiles:/ < hackthebox.dconf
    clear
    echo "Gnome Terminal Profile Loaded Successfully" 
    
    # tmux
    mv .tmux.conf ~/.tmux.conf

    # Code
    mv .config/Code/User/settings.json ~/.config/Code/User/settings.json
    mv .config/Code/User/tasks.json ~/.config/Code/User/tasks.json

    # sublime-text
    mv .config/sublime-text/Packages/Aura.tmTheme ~/.config/sublime-text/Packages/Aura.tmTheme
    mv .config/sublime-text/Packages/Dracula.tmTheme ~/.config/sublime-text/Packages/Dracula.tmTheme
    mv .config/sublime-text/Packages/User/Preferences.sublime-settings ~/.config/sublime-text/Packages/User/Preferences.sublime-settings

