#!/bin/bash

# Applying System Updates
sudo apt-get update
sudo apt-get upgrade
s
# Adjust Swappiness
sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf"

# Disable App reporting
sudo service apport stop ; sudo sed -ibak -e s/^enabled\=1$/enabled\=0/ /etc/default/apport ; sudo mv /etc/default/apportbak ~

# Install GDebi GTK and Synaptic
sudo apt install synaptic gdebi

# ENABLE PPA
sudo apt-get install software-properties-common

# Installing Missing Drivers/Packages
sudo apt-get install ubuntu-restricted-extras

# Configure Unity
sudo apt-get install dconf-editora
sudo apt-get install unity-tweak-tool

# Enable ‘Minimise on Click’
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true

# Installing Flash player
sudo apt-get install flashplugin-installer

# Install Junk Cleaner (Bleachbit)
sudo apt-get install bleachbit

# Compression/Decompression tools
sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

# Disable System Crash Reports: "enabled=1" change it to "enabled=0"
sudo gedit /etc/default/apport
sudo service apport stop

# Enable working PPAs from previous Ubuntu releases
sudo add-apt-repository ppa:webupd8team/y-ppa-manager
sudo apt update
sudo apt install y-ppa-manager

# Install git
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
sudo apt install gitk
sudo apt-get install git-extras

# Install mergetool meld package
sudo apt-get install meld
git config --global merge.tool meld
git mergetool

# Install git-flow
sudo apt-get install git-flow

# SSH configuration
sudo apt install xclip
ssh-keygen -t rsa -C "relizon44@gmail.com"
xclip -sel clip < ~/.ssh/id_rsa.pub

# Install ubuntu developer tools
# https://github.com/ubuntu/ubuntu-make
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install ubuntu-make

# Install dropbox
sudo apt install unity-tweak-tool

# Install skype
sudo apt install skype

# Install vim editor
sudo apt install vim

# Install terminal multiplexer
sudo apt-get install tmux

# Install googel chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Install sublime text 3
wget https://download.sublimetext.com/sublime-text_build-3124_amd64.deb
sudo dpkg -i sublime-text_build-3124_amd64.deb
rm sublime-text_build-3124_amd64.deb

# Install GNU Stow: symlink farm manager
sudo apt-get install stow

# Installing Janus: Vim Distribution
# https://github.com/carlhuda/janus
sudo apt-get install ruby-dev rake exuberant-ctags ack-grep
curl -L https://bit.ly/janus-bootstrap | bash

# Install fishshell
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish
chsh -s /usr/bin/fish

# Basic fish configuration
mkdir -p ~/.config/fish
vim ~/.config/fish/config.fish
set -g -x PATH /usr/local/bin $PATH
fish_config
fish_update_completions
echo "set -g -x fish_greeting ''" >> ~/.config/fish/config.fish

# Install plugin manager for fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher z fzf edc/bass omf/thefuck

# Install app which corrects your previous console command
sudo apt update
sudo apt install python3-dev python3-pip
sudo -H pip3 install thefuck

# Setup dotfiles
cd ~
git clone https://github.com/relizont/dotfiles.git && cd dotfiles
stow vim tmux
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap

# Find your Server's Public IP Address
sudo apt-get install curl
curl http://icanhazip.com

# Install Linux, Apache, MySQL, PHP (LAMP) stack on Ubuntu 16.04
# https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-16-04
# https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04
# https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-16-04
# Symblink /var/www/html to ~/Sites
ln -s /var/www/html/ ~/Sites

# Fix web directories permissions
sudo chown -R $USER:$USER /var/www/html
sudo chmod -R 755 /var/www

# Add user to apache group
sudo usermod -aG www-data $USER

# Install Filezilla
sudo apt-get install filezilla

# fast access to the blocked Internet
wget https://s3.amazonaws.com/lantern/lantern-installer-beta-64-bit.deb
sudo dpkg -i lantern-installer-beta-64-bit.deb
rm lantern-installer-beta-64-bit.deb

# Install COMIC BOOK READER 
sudo apt-get install mcomix

# Install Take a Break in Ubuntu
sudo add-apt-repository ppa:vlijm/takeabreak
sudo apt-get update
sudo apt-get install takeabreak

# Install GIMP
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update

# Revert PPA changes
sudo apt-get install ppa-purge
# sudo ppa-purge ppa:otto-kesselgulasch/gimp

# Install pyRenamer: mass file renamer
sudo apt-get install pyrenamer

# Install trash-empty - Empty for Command line trash utility.
sudo apt-get install trash-cli

# Install pipe viewer
sudo apt-get install pv

# Install tree package
sudo apt-get install tree

# Install youtube video downloader cli
sudo pip install --upgrade youtube-dl

# Installing Node.js
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y build-essential
sudo apt-get install -y nodejs
sudo npm install -g gulp bower
sudo npm install -g jshint
# sudo npm install -g grunt-cli

# Update NPM, Bower or Gulp
# npm update -g npm
# npm update -g gulp
# npm update -g bower

# Cleaning NPM and Bower cache
# npm cache clean
# bower cache clean

# Installing GIMP
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp

# Installing sendmail
sudo apt-get install sendmail

# Installing mailhog: Web and API based SMTP testing
wget https://github.com/mailhog/MailHog/releases/download/v0.2.1/MailHog_linux_amd64 -O mailhog
chmod +x mailhog 
sudo mv mailhog /usr/local/bin/

# Installing golang-go
sudo apt install golang-go

# Installing Redshift: Color temperature adjustment tool
sudo apt-get install redshift

# Eyebreak 20-20-20 rule
sudo apt-get install workrave

# Installing subdownloader
sudo apt-get install subdownloader

# laravel php stuffs
sudo apt-get install composer
sudo apt-get install php-mbstring php-xml php-curl php7.0-gd php7.0-zip

# Install tor browser
sudo add-apt-repository ppa:webupd8team/tor-browser
sudo apt-get update
sudo apt-get install tor-browser

# Install atom editor
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt-get update
  sudo apt-get install atom
  # apm stars --install
  apm install linter linter-php linter-jshint linter-csslint linter-htmlhint emmet atom-beautify php-cs-fixer php-twig
  composer global require "asm89/twig-lint" "@dev"
  
  
# Install app
# http://koala-app.com/
wget https://launchpad.net/ubuntu/+source/udev/175-0ubuntu19/+build/4325788/+files/libudev0_175-0ubuntu19_amd64.deb
sudo dpkg -i libudev0_175-0ubuntu19_amd64.deb

# Installing wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
sudo wp cli update --allow-root

# Install php-cs-fixer (atom)
curl -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v1.11.6/php-cs-fixer.phar -o php-cs-fixer
sudo chmod a+x php-cs-fixer
sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer

# Install virtual box
sudo apt-get install virtualbox

# Install mysql workbench
sudo apt-get install mysql-workbench

# Easy file sharing from the command line ( fish shell )
fisher https://gist.github.com/nl5887/a511f172d3fb3cd0e42d

# Imgur-Screenshot Is a Nifty Screengrab and Upload Tool for Linux
sudo apt install curl grep libnotify-bin scrot xclip
wget https://github.com/jomo/imgur-screenshot/releases/download/v1.7.3/imgur-screenshot.sh
sudo install imgur-screenshot.sh /usr/local/bin/imgur-screenshot
sudo imgur-screenshot --update
sudo chmod 775 /usr/local/bin/imgur-screenshot

# Install lightweight dock
sudo apt-get install plank

# `ALBERT`: A FAST, LIGHTWEIGHT QUICK LAUNCHER FOR LINUX
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install albert

# Command line web browser
sudo apt-get install lynx
sudo apt-get install links

# Install gawk
sudo apt-get install gawk

# Install ncdu to view disk usage by directory
sudo apt-get install ncdu

# GET NIGHT SHIFT FEATURE IN UBUNTU LINUX WITH F.LUX
sudo add-apt-repository ppa:nathan-renniewaldock/flux
sudo apt-get update
sudo apt-get install fluxgui

# Install Corebird Twitter Client
sudo add-apt-repository ppa:ubuntuhandbook1/corebird
sudo apt update && sudo apt install corebird

# Install Clementine Music Player
sudo add-apt-repository ppa:me-davidsansome/clementine
sudo apt-get update && sudo apt-get install clementine

# Disable Desktop Notifications 
sudo add-apt-repository ppa:vlijm/nonotifs
sudo apt-get update && sudo apt-get install nonotifs

#SAFEEYES PROTECTS YOU FROM EYE STRAIN WHEN WORKING ON THE COMPUTER
sudo add-apt-repository ppa:slgobinath/safeeyes
sudo apt update
sudo apt install safeeyes

# command-line based system info tool 
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo apt update && sudo apt install neofetch

# Optimize and Compress JPEG or PNG Images
sudo apt-get install trimage -y
sudo apt-get install jpegoptim optipng -y



 
