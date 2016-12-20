# Resume Stalled SCP File Transfer In Linux

Here is the origin scp command:

    $ scp -C root@xxx.xxx.xxx.xxx:/var/www/web/Web_Webroot_20110520.tar.gz /home/macinville/Downloads/.

According to EverythingLinux.Org:

Rsync is a wonderful little utility that’s amazingly easy to set up on your machines. Rather than have a scripted FTP session, or some other form of file transfer script — rsync copies only the diffs of files that have actually changed, compressed and through ssh if you want to for security.
And here is how to use rsync to download the files:

    $ rsync --rsh='ssh' -av --progress --partial root@xxx.xxx.xxx.xxx:/var/www/web/Web_Webroot_20110520.tar.gz /home/macinville/Downloads/.

If permission denied

    $ sudo rsync --rsh='ssh -i /path/to/publickey' -av --progress --partial root@xxx.xxx.xxx.xxx:/var/www/web/WebWebroot20110520.tar.gz /home/macinville/Downloads/.

Reference
    [https://coderwall.com/p/-zwtyw/resume-stalled-scp-file-transfer-in-linux](https://coderwall.com/p/-zwtyw/resume-stalled-scp-file-transfer-in-linux)
