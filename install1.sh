figlet "Changing Wallpaper" | lolcat
pcmanfm --set-wallpaper="/home/pi/amogos_installer/wallpaper.png"
echo "There are more wallpapers available at /home/pi/Wallpapers"
sleep 2
figlet "Manual Configuration" | lolcat
echo "Please change theme to arc-dark or arc as per your wish"
echo "Please change the cursor and icon packs as per your wish as well(breeze and papirus)"
read -n 1 -s -r -p "Press any key to continue"
echo ""
lxappearance

figlet "Installation has completed!" | lolcat
