# Install ProFTPD Server in Ubuntu Server + Create FTP user.

### Step 1: Install ProFTPD Server

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

Now to install ProFTPD server, run in the terminal.

```
$ sudo apt-get install proftpd
```

![Package Configuration](https://trello-attachments.s3.amazonaws.com/54f421cf08ba265c05eda8f3/620x420/f9ca2a5a2c4faa90d9dc28f6a25b7e6c/Install-Proftpd-620x420.png)

### Step 2: Configure ProFTPD Server

Before start using it, we’ll need to edit some files, the **/etc/proftpd/proftpd.conf** is the default configuration file for Ubuntu/Debian servers, to start editing it using the **vi** command, run.

```
$ sudo vi /etc/proftpd/proftpd.conf
```
Press the “**I**” key to start editing the file. Now change the content of the file as shown it below.

1.  **ServerName**: Make it your default server name.
2.  **UseIPV6**: You may switch it to “**Off**“, if you don’t use it.
3.  **DefaultRoot** : Uncomment this line to restrict users with their home folders.
4.  **RequireValidShell**: Uncomment this line and make it “**On**” to enable logging in for users, even for those who doesn’t have a valid shell in **/etc/shells** to log in.
5.  **AuthOrder**: Uncomment the line to enable the using of local passwords.
6.  **Port**: This line defines the default port for the FTP server, it is **21** by default. If you want, you can define any custom port here.
7.  **SystemLog**: The default log file path, you may change it if you want.

After making above changes as suggested, you can save the file, press the “**ESC**” key and write **:x** to save and quite .

Now restart the ProFTPD server using this command.

```
$ sudo service proftpd restart
```

During ProFTPD installation, a default “**proftpd**” user created automatically, but we’ll need to create a password for it, to do so, run.

```
$ sudo passwd proftpd
```

### Step 3: Creating ProFTPD Users

As you noticed, you are in the default home directory for the “**proftpd**” user, which isn’t useful for us, thats why we are going to create a new user with the **/var/www/** folder as the home folder, so we can access it easily.

To create a FTP user say “**myproftpduser**” run.

```
$ sudo useradd myproftpduser
```

To create a password for it.

```
$ sudo passwd myproftpduser
```

To change it’s home folder to **/var/www/** run.

```
$ sudo usermod -m -d /var/www/projname myproftpduser
```

Now restart the ProFTPD server using.

```
$ sudo service proftpd restart
```
And now you can access it from the FTP server easily, you may also use Filezilla or any other FTP client to access your FTP server as well if you want.

### Step 4: Troubleshooting ProFTPD:
Any available error messages will be stored in **/var/log/proftpd/proftpd.log** by default, you may check this file if your ProFTPD server installation isn’t working, you must also note that sometimes it happens that the ProFTPD server lags and you can’t access the server due to the “**Connection Refused**” message, it is not a problem, all what you have to do is to keep restarting the ProFTPD server until it works (in case if there were no other errors).



####Error: Debian / Proftp 550 Permission denied
```
chown -R myproftpduser /var/www/projname
```
