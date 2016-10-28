# Setting up caddy server for wordpress 

[The HTTP/2 web server with automatic HTTPS](https://caddyserver.com/)

## Installing PHP 7 in Ubuntu 16.04

        sudo apt-get -y install php7.0-fpm

PHP-FPM is a daemon process (with the init script php7.0-fpm) that runs a FastCGI server on the socket 

        /run/php/php7.0-fpm.sock

## Create WordPress Database

With all the prerequisites in place, we can go ahead and create a new MySQL database and user for WordPress.

First, log into the MySQL Shell:

    mysql -u root -p
    
Now, create the database and user:

    CREATE DATABASE wordpress;
    CREATE USER wordpressuser@localhost;
    SET PASSWORD FOR wordpressuser@localhost= PASSWORD("password");
    GRANT ALL PRIVILEGES ON wordpress.* TO wordpressuser@localhost IDENTIFIED BY 'password';
    FLUSH PRIVILEGES;
    exit
    
A couple of things are going on here: 

1. Create the actual wordpress database. 
2. Create the user wordpressuser. 
3. Set a password for this user. 
4. Grant all privileges of the wordpress database to this user. 
5. Reload the new user settings.

Feel free to name you database or user differently.

## Download & install WordPress

We can get the latest version of Wordpress from their official website:

    mkdir caddywp && cd caddywp    
    curl -SL http://wordpress.org/latest.tar.gz | tar --strip 1 -xzf -    

## Generate wp-config file

        wp core config --dbhost=localhost --dbname=wordpress --dbuser=root --dbpass=root --dbprefix=wp_

## Create Caddyfile inside `caddywp` project and write below

        localhost:8080
        root /var/www/caddywp
        gzip
        fastcgi / /run/php/php7.0-fpm.sock php
        errors errors.log
        rewrite {
            if {path} not_match ^\/wp-admin
            to {path} {path}/ /index.php?_url={uri}
        }

Now, we can finally run caddy. If everything went right, you'll be greeted by WordPress once you visit http://localhost:8080. From here on, WordPress will guide you through the rest of the setup.
