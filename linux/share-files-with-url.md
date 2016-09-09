# Easy file sharing from the command line

[https://transfer.sh/](https://transfer.sh/)

### Add fish alias for transfer.sh using fisher package manager
```
fisher https://gist.github.com/nl5887/a511f172d3fb3cd0e42d
```

### Uploading is easy using curl
```
$ curl --upload-file ./hello.txt https://transfer.sh/hello.txt 
https://transfer.sh/66nb8/hello.txt 
```

### Download the file 
```
$ curl https://transfer.sh/66nb8/hello.txt -o hello.txt
```

### Backup mysql database, encrypt and transfer
```
$ mysqldump --all-databases|gzip|gpg -ac -o-|curl -X PUT --upload-file "-" https://transfer.sh/test.txt
```
