# Easy file sharing from the command line

[https://transfer.sh/](https://transfer.sh/)

Fish alias for transfer.sh. Transfers files and directories to transfer.sh.
Add fish alias for transfer.sh using fisher package manager
```
fisher https://gist.github.com/nl5887/a511f172d3fb3cd0e42d
```

### Uploading is easy using curl 
$ curl --upload-file ./hello.txt https://transfer.sh/hello.txt 
https://transfer.sh/66nb8/hello.txt 

### Download the file 
$ curl https://transfer.sh/66nb8/hello.txt -o hello.txt
