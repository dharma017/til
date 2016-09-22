### Find The Largest Top 10 Files and Directories On a Linux / UNIX

    find . -type f -printf '%s %p\n'| sort -nr | head -10
