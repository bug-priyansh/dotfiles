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

### ----  Installing Apps --------------------------------
### ----  Direct Apps --------------------------------
echo "Installing Text Editors."
    echo "Installing nano..."
	sudo apt install -y nano 
	clear

	echo "Installing vim..."
	sudo apt install -y vim 
	clear
		
	echo "Installing neovim..."
	sudo apt install -y neovim
	clear

	echo "Installing IDE."
	    echo "Instaling code..."
	    sudo apt install -y $deb_location/code*
	    clear

		echo "Instaling sublimetext..."
		wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
    	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    	sudo apt update -y
    	sudo apt install -y sublime-text
    	clear

	echo "Installing Version Control."
		echo "Installing git..."
		sudo apt install -y git
		clear

		echo "Installing github..."
		wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
		sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
		sudo apt update && sudo apt install github-desktop
		clear

	echo "Installing Web Servers."
		echo "Installing Apache2..."
		sudo apt install -y apache2
		clear

		echo "Installing Nginx..."
		sudo apt install -y nginx
		clear

		echo "Installing jellyfin..."
		sudo apt install -y ~/Downloads/Installer/jellyfin*

	echo "Installing Network Tools."
		echo "Installing curl..."
		sudo apt install -y curl
		clear

		echo "Installing wget..."
		sudo apt install -y wget 
		clear

		echo "Installing Packet Tracer (Network Simulator)"
		sudo apt install -y $deb_location/cisco-packet-tracer*
		clear

	echo "Installing File Compression and Extraction."
		echo "Installing unzip..."
		sudo apt install -y unzip 
		clear

		echo "Installing zip..."
		sudo apt install -y zip
		clear

		echo "Installing tar..."
		sudo apt install -y tar
		clear
	
	echo "Installing SSH Clients."
		echo "Installing openssh..."
		sudo apt install -y openssh
		clear

	echo "Installing Terminals and Shells."
		echo "Installing Terminator..."
		sudo apt install -y terminator
		clear

		echo "Installing Terminus..."
    	sudo apt install -y $deb_location/Terminus*
    	clear

		echo "Installing zsh..."
		sudo apt install -y zsh
		clear
		
		echo "Installing bash..."
		echo "Installing fish..."

		echo "Installing Gnome-Terminal..."
		sudo apt install -y gnome-terminal
		clear

	echo "Installing Customization Tools."
		echo "Installing conky..."
		sudo apt install -y conky-all
		clear
	
	echo "Installing Utility Tools."
		echo "Installing Htop..."
		sudo apt install -y htop 
		clear

		echo "Installing powertop..."
		sudo apt install -y powertop
		clear

		echo "Installing nvtop..." 
		sudo apt install -y nvtop
		clear

		echo "Installing Tmux..."
		sudo apt install -y tmux 
		clear


	echo "Installing Virtual Box..."
		sudo apt install -y $deb_location/virtualbox*
		#curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox_2016.gpg
    	# curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
    	# echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
    	# sudo apt update -y
    	# sudo apt install -y dkms virtualbox virtualbox-ext-pack
    	clear

    echo "Installing Envycontrol..."
		sudo apt install -y $deb_location/python3-envycontrol*
    	clear

    echo "Installing Splunk..."
    	sudo apt install -y $deb_location/splnuk*
    	clear
    	
    echo "Installing Gparted..."
    	sudo apt install -y Gparted
    	clear

    echo "Installing Timeshift..."
    	sudo apt install -y timeshift
    	clear

    echo "Installing Nvidia Driver..."
    	sudo apt install -y nvidia-detect nvidia-drivers nvidia-cudo-toolkit
    	clear

	echo "Installing Text Processing Tools."
		echo "Installing gawk..."
		sudo apt install -y gawk
		clear

		echo "Installing sed..."
		sudo apt install -y sed
		clear

	echo "Installing Image Manipulation."
		echo "Installing imagemagick..."
		sudo apt install -y imagemagick
		sudo apt install -y image-analyzer
		clear

		echo "Installing gimp..."
		sudo apt install -y gmip
		clear

	echo "Installing Note-taking and Documentation."
		echo "Installing obsidan..."
		# sudo apt install -y $deb_location/obsidian*
        flatpak install flathub md.obsidian.Obsidian
		clear

		echo "Installing notion..."
		echo "Installing joplin..."
		echo "Installing keepnotes..."
	
	echo "Installing Media Tools."
		echo "Installing ffmpeg..."
		sudo apt install -y ffmpeg
		clear

		echo "Installing vlc..."
    	sudo apt install -y vlc
    	clear
    	
		echo "Installing Spotify..."
    	curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
    	echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    	sudo apt update -y
    	sudo apt install -y spotify-client
    	clear

	echo "Installing Browsers."
		echo "Installing chromium..."
		sudo apt install -y chromium
		clear

		echo "Installing google-chrome..."
		sudo apt install -y $deb_location/google-chrome*
		clear

		echo "Installing firefox..."
		sudo apt install -y firefox-esr

		echo "Installing brave-browser..."
		sudo apt install -y curl
    	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    	sudo apt -y update
    	sudo apt install -y brave-browser
    	clear

		echo "Installing brave-browser-nightly..."
		sudo apt install -y curl
    	sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg
    	echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list
    	sudo apt -y update
    	sudo apt install -y brave-browser-nightly
    	clear

	echo "Installing Social media."
		echo "Installing discord..."
		sudo apt install -y $deb_location/discord*
		clear
		
	echo "Installing Package Managers."
		echo "Installing apt..."
		echo "Installing aptitude..."
		sudo apt install -y aptitude
		clear

	# sudo apt install -y keepass
