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

export deb_location="$HOME/Downloads/Installers"

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

		echo "Instaling AndroidStudio..."
		flatpak install flathub com.google.AndroidStudio
		clear

		echo "Instaling beekeeperstudio..."
		flatpak install flathub io.beekeeperstudio.Studio
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

		echo "Installing Flatseal..."
		flatpak install flathub com.github.tchx84.Flatseal
		clear

		echo "Installing Warehouse..."
		flatpak install flathub io.github.flattool.Warehouse
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

		echo "Installing OBS..."
		flatpak install flathub com.obsproject.Studio
		clear

		echo "Installing Figma..."
		flatpak install flathub io.github.Figma_Linux.figma_linux
		clear

		echo "Installing eyeofgnome..."
		flatpak install flathub org.gnome.eog
		clear

		echo "Installing Headlamp..."
		flatpak install flathub io.kinvolk.Headlamp
		clear
		
		echo "Installing Slack..."
		flatpak install flathub com.slack.Slack
		clear

		echo "Installing Zoom..."
    	flatpak install flathub us.zoom.Zoom
    	clear

		echo "Installing Anydesk..."
		flatpak install flathub com.anydesk.Anydesk
		clear

		echo "Installing Unity..."
		flatpak install flathub com.unity.UnityHub
		clear

		echo "Installing Boxes..."
		flatpak install flathub org.gnome.Boxes
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

		echo "Installing Blender..."
		flatpak install flathub org.blender.Blender
		clear
	
	echo "Installing Note-taking and Documentation."
		echo "Installing obsidan..."
		sudo apt install -y $deb_location/obsidian*
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
    	
    	echo "Installing Audacity..."
    	flatpak install flathub org.audacityteam.Audacity
    	clear

    	echo "Installing Rythmbox..."
    	flatpak install flathub org.gnome.Rhythmbox3
    	clear

    	echo "Installing Handbrake..."
    	flatpak install flathub fr.handbrake.ghb
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

		echo "Installing Tor..."
		flatpak install flathub org.torproject.torbrowser-launcher
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

		echo "Installing telegram..."
		flatpak install flathub org.telegram.desktop
		clear

		echo "Installing whatsapp..."
		echo "Installing signal..."
		flatpak install flathub org.signal.Signal
		clear

	echo "Installing Package Managers."
		echo "Installing apt..."
		echo "Installing aptitude..."
		sudo apt install -y aptitude
		clear

		echo "Installing brew..."
		echo "Installing flatpak..."


### ---- Depedencies --------------------------------
	# Update and upgrade the system
	echo "Updating and upgrading the system..."
		sudo apt update -y 
		clear
	
		sudo apt full-upgrade -y
		clear
	
		sudo apt autoremove -y
		clear

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


### ---- Programming Languages --------------------------------
	# Update and upgrade the system
	echo "Updating and upgrading the system..."
		sudo apt update -y 
		clear
		
		sudo apt full-upgrade -y
		clear
		
		sudo apt autoremove -y
		clear

	echo "Installing Development Tools."
		echo "Installing gcc..."
		sudo apt install -y gcc
		clear

		echo "Installing make..."
		sudo apt install -y make
		clear
		
		echo "Installing Postman"
		flatpak install flathub com.getpostman.Postman
		clear
		
		echo "Installing podman..."
		flatpak install flathub io.podman_desktop.PodmanDesktop
		clear

		echo "Installing Ngrok..."
    	curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
    	clear

		echo "Installing Docker..."
		sudo apt install docker docker.io docker-compose
		clear

	echo "Installing Databases."
		echo "Installing Mysql..."
		sudo apt install -y default-mysql-client
		sudo apt install -y default-mysql-server
		clear

		echo "Installing postgresql..."
		sudo apt install -y postgresql-client
		sudo apt install -y postgresql
		sudo apt install -y postgresql-contrib

	echo "Installing Programing language."
		echo "Installing Powershell..."
		sudo apt install -y powershell
		clear

		echo "Installing Ruby..."
		sudo apt install -y ruby-full
		sudo apt install -y ruby-dev
		clear
	
		echo "Installing golang..."
		sudo apt install -y golang
		clear
	
		echo "Installing redis..."
		sudo apt install -y redis
		clear

		echo "Installing jq..."
		sudo apt install -y jq
		clear
	
		echo "Installing php..."
		sudo apt install -y php
		clear

		echo "Installing nodejs..."
		sudo apt install -y nodejs
		sudo apt install -y npm
		clear

		echo "Installing python..."
		sudo apt install -y python3
		sudo apt install -y python3-pip
		sudo apt install -y python3-dev
		clear

		echo "Installing Go"
    	wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
    	sudo tar -xvf go1.13.4.linux-amd64.tar.gz
    	sudo mv go /usr/local
    	export GOROOT=/usr/local/go
    	export GOPATH=$HOME/go
    	export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
    	echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
    	echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
    	echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
    	source ~/.bash_profile
    	clear

### ---- Python Modules --------------------------------
	# Update and upgrade the system
	echo "Updating and upgrading the system..."
		sudo apt update -y 
		clear
	
		sudo apt full-upgrade -y
		clear
		
		sudo apt autoremove -y
		clear

	
	echo "Installing scapy..."
	pip3 install scapy
	clear

	echo "Installing pycrypto..."
	pip3 install pycrypto
	clear

	echo "Installing requests..."
	pip3 install requests
	clear

	echo "Installing beautifulsoup4..."
	pip3 install beautifulsoup4
	clear

	echo "Installing bs4..."
	pip3 install bs4
	clear

	echo "Installing scikit-learn..."
	pip3 install scikit-learn
	clear

	echo "Installing paramiko..."
	pip3 install paramiko
	clear

	echo "Installing tensorflow..."
	pip3 install tensorflow
	clear

	echo "Installing PyAutoGUI..."
	pip3 install PyAutoGUI
	clear

	echo "Installing python-time..."
	pip3 install python-time
	clear

	echo "Installing tornado..."
	pip3 install tornado
	clear

	echo "Installing faker..."
	pip3 install Faker
	clear

	echo "Installing numpy..."
	pip3 install numpy
	clear

	echo "Installing matplotlib..."
	pip3 install matplotlib
	clear

	echo "Installing pandas..."
	pip3 install pandas
	clear

	echo "Installing cryptography..."
	pip3 install cryptography
	clear

	echo "Installing yara-python..."
	pip3 install yara-python
	clear

	echo "Installing Twisted..."
	pip3 install Twisted
	clear

	echo "Installing pymetasploit3..."
	pip3 install pymetasploit3
	clear

	echo "Installing mechanize..."
	pip3 install mechanize
	clear

	echo "Installing pscan..."
	pip3 install pscan
	clear

	echo "Installing plists..."
	pip3 install plists
	clear

	echo "Installing pwntools..."
	pip3 install pwntools
	clear

	echo "Installing rawsocketpy..."
	pip3 install rawsocketpy
	clear

	echo "Installing keras..."
	pip3 install keras
	clear

	echo "Installing plotly..."
	pip3 install plotly
	clear

	echo "Installing torch..."
	pip3 install torch
	clear

	echo "Installing Theano..."
	pip3 install Theano
	clear

	echo "Installing python-setuptools..."
	pip3 install python-setuptools
	clear

	echo "Installing python-dnspython..."
	pip3 install python-dnspython
	clear

### ---- Ollama --------------------------------
	# Update and upgrade the system
	echo "Updating and upgrading the system..."
		sudo apt update -y 
		clear
	
		sudo apt full-upgrade -y
		clear
		
		sudo apt autoremove -y
		clear

    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
    clear
    	
	echo "Installing Ollama modules..."
	ollama pull llama3
	clear
	# ollama pull codeup
	clear
	# ollama pull phi3
	clear
	# ollama pull mistral
	clear
	# ollama pull gemma
	clear
	# ollama pull mixtral
	clear
	echo "All Ollama models have been installed."
	clear

### ---- Kali-Tools --------------------------------
	# Update and upgrade the system
	echo "Updating and upgrading the system..."
	sudo apt update -y 
	clear
	sudo apt full-upgrade -y
	clear
	sudo apt autoremove -y
	clear

	echo "Installing Information Gathering Tools."
	sudo apt install -y nmap
	sudo apt install -y recon-ng
	sudo apt install -y wireshark
	sudo apt install -y shodan
	sudo apt install -y theharvester
	sudo apt install -y dnsenum
	sudo apt install -y maltego
	clear

	echo "Installing Vulnerability Scanners Tools."
	sudo apt install -y nessus
	sudo apt install -y openvas-scanner
	sudo apt install -y nikto
	sudo apt install -y zaproxy 
	sudo apt install -y nexpose
	clear

	echo "Installing Exploitation Tools."
	sudo apt install -y metasploit-framework
	sudo apt install -y exploitdb
	sudo apt install -y sqlmap
	sudo apt install -y burpsuite
	sudo apt install -y yydra
	sudo apt install -y beef
	clear

	echo "Installing Password Cracking Tools."
	sudo apt install -y johntheripper
	sudo apt install -y john
	sudo apt install -y hashcat
	sudo apt install -y hydra
	clear

	echo "Installing Wireless Hacking Tools."
	sudo apt install -y aircrack-ng
	sudo apt install -y reaver
	sudo apt install -y wifite
	clear
	
	echo "Installing Web Application Testing Tools."
	sudo apt install -y owtf #OWASP OWTF (Offensive Web Testing Framework)
	sudo apt install -y skipfish
	sudo apt install -y w3af (Web Application Attack and Audit Framework)
	clear

	echo "Installing Social Engineering Tools."
	sudo apt install -y setoolkit #(Social-Engineer Toolkit)
	sudo apt install -y beef #(Browser Exploitation Framework)
	sudo apt install -y king-phisher
	clear

	echo "Installing Post-Exploitation Tools."
	sudo apt install -y powersploit
	sudo apt install -y empire
	sudo apt install -y pupy
	sudo apt install -y covenant
	clear

	echo "Installing Forensics and Analysis Tools."
	sudo apt install -y autopsy
	sudo apt install -y wireshark
	sudo apt install -y volatility
	sudo apt install -y sleuthKit
	sudo apt install -y ghiro
	clear

	echo "Installing Wireless Network Tools."
	sudo apt install -y wireshark
	sudo apt install -y aircrack-ng
	sudo apt install -y kismet
	sudo apt install -y wifite
	clear

	echo "Installing Reverse Engineering Tools."
	sudo apt install -y ida-pro
	sudo apt install -y ghidra
	sudo apt install -y radare2
	sudo apt install -y ollydbg
	clear

	echo "Installing Steganography Tools."
	sudo apt install -y steghide
	sudo apt install -y outguess
	sudo apt install -y openstego
	clear

	echo "Installing Network Sniffing Tools."
	sudo apt install -y wireshark
	sudo apt install -y tcpdump
	sudo apt install -y tshark
	clear

	echo "Installing Proxy Tools."
	sudo apt install -y burpsuite
	sudo apt install -y zaproxy 
	sudo apt install -y charles-proxy
	clear

	echo "Installing Password Managers Tools."
	# sudo apt install -y keepass
	flatpak install flathub com.bitwarden.desktop
	clear

	echo "Installing Crypto Tools."
	sudo apt install -y openssl
	sudo apt install -y gnupg
	clear


	echo "Installing Others Tools."
	sudo apt install -y WhatWaf
	sudo apt install -y photon
	sudo apt install -y sherlock
	sudo apt install -y nikto2
	sudo apt install -y faraday
	sudo apt install -y autorecon
	sudo apt install -y mitmproxy
	sudo apt install -y wpscan
	sudo apt install -y sleuthkit
	sudo apt install -y whatweb
	clear

### ---- Wrapping up --------------------------------
	# Update and upgrade the system
	echo "Updating and upgrading the system..."
	sudo apt update -y 
	clear
	sudo apt full-upgrade -y
	clear
	sudo apt autoremove -y
	clear