# Custom Rom Flashing

### Install adb and fastboot android tools
`sudo apt-get install adb android-tools-adb android-tools-fastboot`

### Check adb version
`adb version`

### Checking and unlocking the bootloader
`fastboot oem device-info`

### Check android device connection information
`adb devices`

### Reboot your phone into bootloader mode
`adb reboot-bootloader`

### Check android device connection information
`fastboot devices`

### Flash custom recovery image temporarily
`fastboot boot recovery.img`

### Flash custom recovery image permanently
`fastboot flash recovery recovery.img`

### Push and flash custom ROMs and zips from your computer
`adb sideload file.zip`

## References
[http://en.miui.com/thread-328569-1-1.html](http://en.miui.com/thread-328569-1-1.html)
[https://www.reddit.com/r/Xiaomi/wiki/roms/flashunofficial](https://www.reddit.com/r/Xiaomi/wiki/roms/flashunofficial)
[https://www.reddit.com/r/Xiaomi/wiki/advanced/bootloader](https://www.reddit.com/r/Xiaomi/wiki/advanced/bootloader)
