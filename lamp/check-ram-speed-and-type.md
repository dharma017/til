# Check Ram Speed and Type
[http://www.cyberciti.biz/faq/check-ram-speed-linux/](http://www.cyberciti.biz/faq/check-ram-speed-linux/)

See your RAM speed & type without opening case on Linux/Unix/BSD

    dmidecode -t 17
    lshw -short -C memory

You can just grep speed and skip all other the details using the following syntax

    dmidecode --type 17  | grep -i speed
