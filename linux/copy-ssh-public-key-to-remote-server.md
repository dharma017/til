#One line command to copy public key to remote server in Windows Bash

`cat /.ssh/id_rsa.pub | ssh user@host 'cat >> /.ssh/authorized_keys'`

## Other ways

Windows

`clip < ~/.ssh/id_rsa.pub`

 OR

`cat ~/.ssh/id_rsa.pub | ssh user@host 'cat >> ~/.ssh/authorized_keys'`

Mac

`pbcopy < ~/.ssh/id_rsa.pub`

OR

`ssh-copy-id username@hostname`

GNU/Linux (requires xclip):

`xclip -sel clip < ~/.ssh/id_rsa.pub`

 OR

```
sudo apt-get install ssh-copy-id
ssh-copy-id username@hostname
```
