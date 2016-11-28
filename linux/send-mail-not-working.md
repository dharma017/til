#### Getting the PHP mail() Function (sendmail) to Work on Ubuntu 14.04

Alright, let me start off by saying that I know there are better and more professional solutions for sending email on web servers. But sometimes you just want to use PHP's mail() function to get it done quickly and simply.

Here are the steps I took to get sendmail working on my Ubuntu server.

1) Install sendmail

Sendmail might already be installed, but just in case, enter this into the server terminal:

```
sudo apt-get install sendmail
```

Check its working

`ps -aux | grep sendmail`


Change `php.ini`
I just had a problem where php mail wouldn’t send therefore had to not add this step and it worked?

replace     
`;sendmail_path =      `
with
`sendmail_path =  /usr/sbin/sendmail`

2) Configure sendmail
Enter the following command into the terminal and type "Y" for each question it asks:

```
sudo sendmailconfig
sudo service sendmail restart
```

3) Edit hosts file
Time to edit your server's hosts file, access it by entering the following command into the terminal:

```
sudo vim /etc/hosts
```

Add the following line to the top of the file and save it:

127.0.0.1 localhost localhost.localdomain your_domain_name_here.com
Comment out any duplicate lines that already existed.

For `your_domain_name_here.com`

`cat /etc/hostname`

4) Restart apache
Let's restart your server just for good measure. At this point emails sent via PHP's mail() function should be sending successfully and without much delay.

```
sudo service apache2 restart
```

I hope this solved the problem for you. I've followed this exact procedure on three different Ubuntu 14.04 LTS servers and it has worked for each one.

5) Test Sendmail

```
echo -e "To: user@example.com\nSubject: Test\nTest\n" | sendmail -bm -t -v
```

6) Now try to run the following PHP mail function:

```
if(mail("test@test.com", "This some subject", "This is some message body"))  
    echo "Sent";  
else  
    echo "Not sent";  
```
