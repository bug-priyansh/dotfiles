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
# ollama pull codeup
# ollama pull phi3
# ollama pull mistral
# ollama pull gemma
# ollama pull mixtral

echo "All Ollama models have been installed."
