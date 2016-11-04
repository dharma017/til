# New Linux Server Setup

## To check if I have sudo access
    $ sudo -v
    Sorry, user [username] may not run sudo on [hostname].

## List sudo priviliges
    $ sudo -l

## Login as apache user 

Redhat Server
`sudo -u apache /bin/bash`

Debian/Ubuntu Server        
`sudo -u www-data /bin/bash`

## Creating and Using SSH Keys
    cd ~/.ssh
    ssh-keygen -t rsa -b 4096 -C "your@email.com" -f id_whatever

* `-t rsa` - picking the RSA key type. This is the most-used, but see the resources link below to read on other types.
* `-b 4096` - Key size (bits). "Larger is better", sort of.
* `-C` - A comment, typically used to identity who the key belongs to (an email address or username)
* `-f id_whatever` - The filename of the SSH key created. In this example, we'll get id_whatever private key and id_whatever.pub public key.

On Mac, copy the public key to clipboard
`cat id_whatever.pub | pbcopy`
