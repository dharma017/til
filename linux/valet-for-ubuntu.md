# Valet for Ubuntu

# Requirements

Ubuntu >= 14.04

Dependencies: `sudo apt-get install libnss3-tools jq xsel -y`

PHP >= 5.6

PHP Packages: `sudo apt-get install php-cli php-curl php-mbstring php-mcrypt php-xml php-zip -y`

## Installation

    composer global require cpriego/valet-ubuntu
    echo "set -gx PATH \$PATH /usr/bin/composer" >> ~/.config/fish/config.fish
    sudo systemctl stop apache2.service
    valet install
