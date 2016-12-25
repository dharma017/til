# Valet for Ubuntu

# Requirements

* Ubuntu >= 14.04
* Dependencies: `sudo apt-get install libnss3-tools jq xsel -y`
* PHP >= 5.6
* PHP Packages: `sudo apt-get install php-cli php-curl php-mbstring php-mcrypt php-xml php-zip -y`

## Installation

    composer global require cpriego/valet-ubuntu
    echo "set -gx PATH \$PATH .config/composer/vendor/bin" >> ~/.config/fish/config.fish
    sudo systemctl stop apache2.service
    valet install

Once Valet is installed, try pinging any `*.dev` domain on your terminal using a command such as `ping foobar.dev`. If Valet is installed correctly you should see this domain responding on `127.0.0.1`.

## Serving Sites

    cd ~/Sites
    valet park
    
Open `http://projectname.dev` in your browser.

## Sharing Sites

    cd projectname
    valet share

## Documentation

* [Laravel Valet](https://laravel.com/docs/5.2/valet)
* [Valet for Ubuntu](https://github.com/cpriego/valet-ubuntu)

## Upgrade

    composer global update
    valet install


## Wordpress Configuration

Just add these two lines in wp-config.php

    define( 'WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST'] );
    define( 'WP_HOME', 'http://' . $_SERVER['HTTP_HOST'] );
