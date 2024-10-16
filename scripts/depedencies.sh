### ---- Depedencies --------------------------------
# Update and upgrade the system
    echo "Updating and upgrading the system..."
    sudo apt update -y 
    clear

    sudo apt full-upgrade -y
    clear
    
    sudo apt autoremove -y
    clear

# Installing Depedencies and Other Softwares.
echo "Installing Depedencies and Other Softwares."

echo "Installing build-essential..."
sudo apt install -y build-essential
clear

echo "Installing locate..."
sudo apt install -y locate
clear
		
echo "Installing autoconf..."
sudo apt install -y autoconf 
clear
		
echo "Installing direnv..."
sudo apt install -y direnv 
clear
		
echo "Installing bat..."
sudo apt install -y bat 
clear
		
echo "Installing ripgrep..."
sudo apt install -y ripgrep 
clear
		
echo "Installing fzf..."
sudo apt install -y fzf 
clear
		
echo "Installing rename..."
sudo apt install -y rename 
clear
		
echo "Installing xargs..."
sudo apt install -y xargs
clear
		
echo "Installing gnupg-agent..."
sudo apt install -y gnupg-agent 
clear
		
echo "Installing dconf-cli..."
sudo apt install -y dconf-cli 
clear
		
echo "Installing dconf-editor..."
sudo apt install -y dconf-editor
clear

echo "Installing atom..."
sudo apt install -y atom4
clear

echo "Installing asciinema..."
sudo apt install -y asciinema
clear

echo "Installing pure-ftpd..."
sudo apt install -y pure-ftpd
clear

echo "Installing hexchat..."
sudo apt install -y hexchat
clear

echo "Installing shutter..."
sudo apt install -y shutter
clear

echo "Installing tilda..."
sudo apt install -y tilda
clear

echo "Installing dropbox..."
sudo apt install -y nautilus-dropbox
clear

echo "Installing psmisc..."
sudo apt install -y psmic
clear

# echo "Installing icedove..."
# clear

# echo "Installing pipeviewer..."
# clear

echo "Installing tft..."
sudo apt install -y tftp
clear

echo "Installing libereoffice..."
flatpak install flathub org.libreoffice.LibreOffice
clear

echo "Installing wps..."
flatpak install flathub com.wps.Office
clear

echo "Installing filezilla..."
flatpak install flathub org.filezillaproject.Filezilla
clear

# echo "Installing gitkarken..."
# clear

echo "Installing sshuttle..."
sudo apt install -y sshutle
clear

echo "Installing synergy..."
clear

echo "Installing libcurl4-openssl..."
sudo apt install -y libcurl4-openssl-dev 
clear

echo "Installing libssl-dev..."
sudo apt install -y libssl-dev
clear

echo "Installing mlocate..."
sudo apt install -y mlocate
clear

echo "Installing apt-transport-https..."
sudo apt install -y apt-transport-https 
clear

echo "Installing libxml2..."
sudo apt install -y libxml2 
clear

echo "Installing libxml2-dev..."
sudo apt install -y libxml2-dev 
clear

echo "Installing libxslt1-dev..."
sudo apt install -y libxslt1-dev 
clear

echo "Installing libgmp-dev..."
sudo apt install -y libgmp-dev 
clear

echo "Installing zlib1g-dev..."
sudo apt install -y zlib1g-dev 
clear
		
echo "Installing libffi-dev..."
sudo apt install -y libffi-dev 
clear
		
echo "Installing libldns-dev..."
sudo apt install -y libldns-dev 
clear
		
echo "Installing lnav..."
sudo apt install -y lnav
clear