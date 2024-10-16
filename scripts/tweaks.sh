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
    sudo apt install -y zip unzip git wget curl tmux neofetch gnome-terminal

### ---- ohmyzsh --------------------------------
    echo "Installing oh-my-zsh"
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    clear
    echo "Installed oh-my-zsh Successfully"

    echo "Installing oh-my-zsh custom extensions"
        echo "zsh-autosuggestions"
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
        
        echo "zsh-syntax-highlighting"
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
        
        echo "you-should-use"
        git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
        
        echo "zsh-bat"
        git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat

### ---- powerlevel10k --------------------------------
    echo "Installing powerlevel10k"
    sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    clear
    echo "Installed oh-my-zsh Successfully"

### ---- starship --------------------------------
    echo "Installing starship"
    curl -sS https://starship.rs/install.sh | sh
    clear
    echo "Installed starship Successfully"

### ---- powershell --------------------------------
    echo "Installing powershell"
    sudo apt install -y powershell
    clear
    echo "Installed powershell Successfully"

### ---- brew --------------------------------
    echo "Installing brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    clear
    echo "Installed brew Successfully" 
