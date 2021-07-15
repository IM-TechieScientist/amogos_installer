RED='\033[0;31m'
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
AQUA='\033[1;34m'
NC='\033[0m' 

#Clearing Terminal Screen
clear

#Printing Credits
echo -e  "${GREEN}Welcome to AmogOS Installer(x86)"
echo -e  "${GREEN}This will install AmogOS on your debian-based system"
echo ""
read -n 1 -s -r -p "Press any key to continue"
echo ""

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

sudo apt update || error "Failed to update apt packages"

sudo apt install figlet lolcat
figlet "Installing LXDE" | lolcat
sudo apt install lxde
figlet "Installing arc-theme" | lolcat
sudo apt install arc-theme
figlet "Installing papirus-icons" | lolcat
sudo apt install papirus-icon-theme
figlet "Installing cursor" | lolcat
sudo apt install breeze-cursor-theme
figlet "Installing xfce4-panel" | lolcat
sudo apt install xfce4-panel
figlet "Installation has completed!" | lolcat
echo "Please reboot now and do installation step two"


