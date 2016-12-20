# How to decompress a .bz2 file

Try the following:

    bzip2 -d filename.bz2
    
Note, that this command will not preserve original archive file.

To preserve the original archive, add the -k option:

    bzip2 -dk filename.bz2
