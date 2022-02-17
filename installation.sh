# PPA
echo "Adding PPA"

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'

sudo add-apt-repository ppa:agornostal/ulauncher

sudo apt install software-properties-common apt-transport-https wget
wget –q https://packages.microsoft.com/key/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository “deb[arch=amd64] https://packages.microsoft.com/repos/vscode stable main”



# Updating PPA & Upgrading Applications
sudo apt-get update && sudo apt-get upgrade

# Installing Softwares
echo "Installing Useful Resources"

echo "Gnome-Tweaks"
sudo apt install gnome-tweaks

echo "Edge Browser"
sudo apt-get install microsoft-edge-stable

echo "Microsoft Teams"
sudo apt-get install teams

echo "Skype"
sudo snap install skype -- classic

echo "Stacer"
sudo apt install stacer

echo "Synaptic Package Manager"
sudo apt install synaptic -y

echo "Ulauncher"
sudo apt install ulauncher

echo "VS Code"
sudo apt install code

echo "VLC Media Player"
sudo apt install vlc

echo "Time Shift"
sudo apt install timeshift


# Install Manually
echo "Install this application manually"

echo "Obsidian Note Taking App"
firefox https://obsidian.md/

cd ~/Documents
git clone https://github.com/DhananjayPorwal/obsidian-notes.git


# Customization

echo "Nord Theme"
git clone https://github.com/EliverLara/Nordic.git
mv Nordic ~/home/dhananjay/.themes
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"

echo "Big Sur Icons"
mv Mojave-CT-Night ~/home/dhananjay/.icons
gsettings set org.gnome.desktop.interface icon-theme 'Mojave-CT-Night'

echo "Dock Customization"
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 42
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button false

echo "Wallpaper"
gsettings set org.gnome.desktop.background picture-uri file://arctic-landscape.png

echo "U Launcher Nord Theme"
git clone https://github.com/dhananjay/ulauncher-nord/ \
  ~/.config/ulauncher/user-themes/nord


# Backup
sudo timeshift --create --comments "All SET" --tags O




