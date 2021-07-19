RED='\033[0;31m'
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
AQUA='\033[1;34m'
NC='\033[0m' 

#Clearing Terminal Screen
clear

#Printing Credits
echo -e  "${GREEN}Welcome to the AmogOS Installer (x86_64)"
echo -e  "${GREEN}This will install AmogOS on your Debian or Debian-based system"
echo ""
read -n 1 -s -r -p "Press any key to continue"
echo ""

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

echo "Installing required packages..."
echo " "

sudo apt update || error "Failed to update apt packages"

# Wait for apt lock to be released
i=0
while sudo fuser /var/{lib/{dpkg,apt/lists},cache/apt/archives}/lock > /dev/null 2>&1
do
  case $(($i % 4)) in
    0) j="-";;
    1) j="\\";;
    2) j="|";;
    3) j="/";;
  esac
  printf "\r[$j] Waiting for other APT instances to finish..."
  sleep 0.5
  ((i+=1))
done
[[ $i -gt 0 ]] && printf "Done.\n"

sudo apt install -y figlet lolcat
figlet "Installing LXDE" | lolcat
sudo apt install -y lxde
echo "sleeping 5 seconds"
sleep 5
figlet "Installing arc-theme" | lolcat
sudo apt install -y arc-theme
echo "sleeping 5 seconds"
sleep 5
figlet "Installing papirus-icons" | lolcat
sudo apt install -y papirus-icon-theme
echo "sleeping 5 seconds"
sleep 5
figlet "Installing cursor" | lolcat
sudo apt install -y breeze-cursor-theme
echo "sleeping 5 seconds"
sleep 5
figlet "Installing xfce4-panel" | lolcat
sudo apt install -y xfce4-panel
echo "sleeping 5 seconds"
sleep 5
figlet "Installation has completed!" | lolcat
echo "Please reboot now and do installation step two"


