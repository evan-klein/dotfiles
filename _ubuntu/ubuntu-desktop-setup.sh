#!/bin/sh

read -p "Press any key to run the Ubuntu Desktop setup script... " INPUT1
echo ""
echo ""

. "$HOME/.setup/echo_.sh"

echo_debug "Ubuntu Desktop setup script started..."

github_email=$1

# Check command-line arguments
echo_debug "Checking command-line arguments..."
if (
	[ "$github_email" = "**@e***k****.com" ] || [ "$github_email" = "" ]
); then
	echo_error "Error: you must provide the email address associated with your GitHub account as a command-line argument"
	echo_error "Usage: sh $0 YOUR_GITHUB_EMAIL_ADDRESS"
	echo_error "Example: sh $0 \"you@yours.com\""
	exit 1
fi

# Update system software
echo_debug "Updating system software..."
sudo apt-get -o Acquire::ForceIPv4=true update
sudo apt-get upgrade -y

# Install UFW
echo_debug "Installing UFW..."
sudo apt-get install -y ufw
sudo ufw default deny
sudo ufw --force enable

# Install dependencies for VirtualBox Guest Additions
echo_debug "Installing VirtualBox Guest Additions dependencies..."
sudo apt-get install -y gcc make perl

# Install curl
echo_debug "Installing curl..."
sudo apt-get install -y curl

# Install NTP
echo_debug "Installing NTP..."
sudo apt-get install -y ntp

# Use 12-hour time format
echo_debug "Setting system time display format..."
gsettings set org.gnome.desktop.interface clock-format "12h"

# Download .nanorc
echo_debug "Downloading ~/.nanorc..."
wget https://raw.githubusercontent.com/evan-klein/dotfiles/master/_ubuntu/.nanorc -O ~/.nanorc 2>&1 | grep -i "failed\|error" 1>&2

# Install git
echo_debug "Installing git..."
sudo apt-get install -y git-all
mkdir ~/git/

# Configure git
echo_debug "Configuring git..."
git config --global user.name "Evan Klein"
git config --global user.email "$github_email"

# Generate SSH key for GitHub
echo_debug "Generating SSH key for GitHub..."
ssh-keygen -t ed25519 -N "" -C "$github_email" -f ~/.ssh/github

# Add SSH key to GitHub account
cat ~/.ssh/github.pub
read -p "Please go to https://github.com/settings/keys to add the SSH key above to your GitHub account, and then, press any key to continue... " INPUT2
echo ""
echo ""

# Download SSH config
echo_debug "Downloading SSH config..."
git clone git@github.com:prodctrl/.dotfiles.git /tmp/.dotfiles/
mv /tmp/.dotfiles/cfg/ssh/config ~/.ssh/
rm -rf /tmp/.dotfiles/
sudo chmod -R 700 ~/.ssh/

# Install Sublime Text
echo_debug "Installing Sublime Text..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get -o Acquire::ForceIPv4=true update
sudo apt-get install -y sublime-text

# Download Sublime Text user preferences
echo_debug "Downloading Sublime Text user preferences..."
mkdir -p ~/.config/sublime-text-3/Packages/User/
wget https://raw.githubusercontent.com/evan-klein/dotfiles/master/sublime-text/Preferences.sublime-settings -O ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings 2>&1 | grep -i "failed\|error" 1>&2
wget https://raw.githubusercontent.com/evan-klein/dotfiles/master/sublime-text/CSS.sublime-settings -O ~/.config/sublime-text-3/Packages/User/CSS.sublime-settings 2>&1 | grep -i "failed\|error" 1>&2

# Download default-project.sublime-project
echo_debug "Downloading ~/default-project.sublime-project..."
wget https://raw.githubusercontent.com/evan-klein/dotfiles/master/sublime-text/default-project.sublime-project -O ~/default-project.sublime-project 2>&1 | grep -i "failed\|error" 1>&2

# Install php-cli and related packages
echo_debug "Installing php-cli and related packages..."
sudo apt-get install -y php-cli php-curl php-json

# Install Node.js
echo_debug "Installing Node.js..."
sudo snap install node --classic

# Install http-server
echo_debug "Installing http-server NPM module..."
sudo npm install -g http-server
mkdir ~/Desktop/www/
sudo ufw allow 8080

# Install htop
echo_debug "Installing htop..."
sudo apt-get install -y htop

# Install whois
echo_debug "Installing whois..."
sudo apt-get install -y whois

# Install VirtualBox
echo_debug "Installing VirtualBox..."
sudo apt-get install -y virtualbox

# Install 1Password
# echo_debug "Installing 1Password..."
# TODO

echo_debug "Ubuntu Desktop setup script finished. It might be a good idea to reboot now."
