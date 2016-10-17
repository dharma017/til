# MySQL Change/Reset root Password

## Method #1: Use mysqladmin command to change root password

To setup root password for first time, use mysqladmin command at shell prompt as follows:
   
    mysqladmin -u root password NEWPASSWORD

However, if you want to change (or update) a root password, then you need to use the following command:

    mysqladmin -u root -p'oldpassword' password newpass

For example, If the old password is abc, you can set the new password to 123456, enter:

    mysqladmin -u root -p'abc' password '123456'


## Method #2: Changing MySQL root user password using the mysql command

Login to mysql server, type the following command at shell prompt:
    
    mysql -u root -p

Use mysql database (type command at mysql> prompt):
    mysql> use mysql;
    
Change password for user demouser, enter:

    mysql> update user set password=PASSWORD("NEWPASSWORD") where User='demouser';
    
Finally, reload the privileges:
    mysql> flush privileges;
    mysql> quit

## How do I verify that the new password is working or not?

Use the following mysql command:

    mysql -u root -p'123456' db-name-here

OR

    mysql -u root -p'123456' -e 'show databases;'

A note about changing MySQL password for other users

    mysqladmin -u demouser -p'old-password' password new-password
