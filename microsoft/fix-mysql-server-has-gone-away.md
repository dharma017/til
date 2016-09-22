# Fix Mysql Server has gone away

Go to your XAMPP folder or whatever folder your setup is in `-> mysql -> bin -> my.ini`

Locate the `[mysqld]` section and modify (or add if missing) the following for max_allowed_packet:

    max_allowed_packet = 64M

Note that this isn’t specific to a XAMPP setup. It will work on WAMP and MAMP too or any setup involving MySQL (for the most part).
