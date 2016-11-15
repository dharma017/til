# List of All Open Ports in Linux

To list all open ports or currently running ports including TCP and UDP in Linux

    netstat -lntu

- l – prints only listening sockets
- n – shows port number
- t – enables listing of tcp ports
- u – enables listing of udp ports

You can also use ss command, a well known useful utility for examining sockets in a Linux system. 
Run the command below to list all your open TCP and UCP ports:

    ss -lntu

[http://www.tecmint.com/find-open-ports-in-linux/](http://www.tecmint.com/find-open-ports-in-linux/)
