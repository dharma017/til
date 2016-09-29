# List recursive file sizes of files and directories in a directory

### Install package (recommended)
     sudo apt-get install ncdu

### List all directories and files with relevant size
     du -sh *
     
### List all directories and sort by size
     du -m --max-depth 1 | sort -rn
     
### List TOP 10 by size directories
     du -m --max-depth 1 | sort -rn | head -11
