# Setup FTP SSH for new project in Ubuntu server

## Creating ProFTPD User
    useradd FTP_USER

## To create a password for it.
    passwd FTP_USER

## Git clone project
    git clone git@xx.xxx.xxx.xx/PROJECT_NAME.git

## To change it’s home folder to /var/www/PROJECT_NAME run.
    usermod -m -d /var/www/PROJECT_NAME FTP_USER

## Now restart the ProFTPD server using.
    service proftpd restart

## Change owner:group permissions
    usermod -aG www-data FTP_USER
    chown -R FTP_USER:www-data PROJECT_NAME/

## Login as mysql root in staging server
    mysql -uroot -p'MYSQL_ROOT_PASSWORD'

## Create mysql database, user and grant permissions
    create database MYSQL_DATABASE;
    create user 'MYSQL_USER'@'localhost' identified by 'MYSQL_PASSWORD';
    grant all privileges on MYSQL_DATABASE.* to 'MYSQL_USER'@'localhost';
    flush privileges;
    quit;

## Site FTP and DB Information

    FTP Info
    Host: xx.xxx.xxx.xx
    User: FTP_USER
    Password: FTP_PASSWORD
    Webroot: /
    
    DB Info
    http://xx.xxx.xxx.xx/phpmyadmin/
    host: localhost
    dbname: MYSQL_DATABASE
    username: MYSQL_USER
    password: MYSQL_PASSWORD

## ssh login to FTP_USER
    ssh FTP_USER@xx.xxx.xxx.xx

## Git global setup

    git config --global user.name "GITLAB_USER"
    git config --global user.email "GITLAB_EMAIL"

## Generate ssh keys
    ssh-keygen -t rsa

## Exclude files from gitignore using vim editor
    vim .gitignore

## Write below lines
    .ssh
    .viminfo
    .cache
    .gitconfig

Save vim and exit
