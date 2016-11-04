# New Linux Server Setup

## To check if I have sudo access

    $ sudo -v
    Sorry, user [username] may not run sudo on [hostname].

## List sudo priviliges

    $ sudo -l

## Login as apache user 

Redhat Server

    sudo -u apache /bin/bash

Debian/Ubuntu Server    
    
    sudo -u www-data /bin/bash
