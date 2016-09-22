#One line command to copy public key to remote server in Windows Bash

```
cat /.ssh/id_rsa.pub | ssh user@host 'cat >> /.ssh/authorized_keys'
```
