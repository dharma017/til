# How Do I Get and Use SSH Access?

Download private ssh key `id_rsa` from cpanel

Provide permission to private key
    
    chmod 400 id_rsa

Access login to cpanel using ssh
    
    ssh -v -i id_rsa user@ftp.host.se


### Note

ssh “permissions are too open” error
        
    chmod 400 ~/.ssh/id_rsa
