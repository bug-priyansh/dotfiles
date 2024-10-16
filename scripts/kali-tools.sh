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
	sudo apt install -y w3af #(Web Application Attack and Audit Framework)
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