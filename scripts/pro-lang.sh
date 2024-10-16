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
#Gcc
echo "Installing gcc..."
sudo apt install -y gcc
clear
#make
echo "Installing make..."
sudo apt install -y make
clear
#ngrok
echo "Installing Ngrok..."
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
clear
#docker
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
    sudo apt install -y pipx
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