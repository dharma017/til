# Custom Rom Flashing

### Install adb and fastboot android tools
`sudo apt-get install adb android-tools-adb android-tools-fastboot`

### Check adb version
`sudo adb version`

### Checking and unlocking the bootloader
`sudo fastboot oem device-info`

### Check android device connection information
`sudo adb devices`

### Reboot your phone into bootloader mode
`sudo adb reboot-bootloader`

### Check android device connection information
`sudo fastboot devices`

### Flash custom recovery image temporarily
`sudo fastboot boot recovery.img`

### Flash custom recovery image permanently
`sudo fastboot flash recovery recovery.img`

### Push and flash custom ROMs and zips from your computer
`sudo adb sideload file.zip`

## References

[http://en.miui.com/thread-328569-1-1.html](http://en.miui.com/thread-328569-1-1.html)

[https://www.reddit.com/r/Xiaomi/wiki/roms/flashunofficial](https://www.reddit.com/r/Xiaomi/wiki/roms/flashunofficial)

[https://www.reddit.com/r/Xiaomi/wiki/advanced/bootloader](https://www.reddit.com/r/Xiaomi/wiki/advanced/bootloader)
