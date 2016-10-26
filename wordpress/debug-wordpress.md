##WP_DEBUG
```
// Turn on wp_debug
define('WP_DEBUG', true);

// Turn off wp_debug
define('WP_DEBUG', false);
```

When WP_DEBUG is enabled it will override the default error_reporting settings in your `php.ini` file and change it to display all PHP errors, notices and warnings. Displaying errors will show problems that will break your code. Notices and warnings will display problems with the code that may not break the site but do not following correct PHP guidelines.

##WP_DEBUG_LOG
If you want to log all the errors into a file so you can investigate them later then you should use the constant `WP_DEBUG_LOG` in your `wp-config.php` file. When this constant is set to true it will output all errors into a file debug.log which will be stored inside the wp-content folder.

`define('WP_DEBUG_LOG', true);`

##WP_DEBUG_DISPLAY
By default the WordPress errors will be displayed on the screen, if you are just logging the errors in a debug.log file then you might want to turn off displaying the errors on the screen but setting the constant to false.

`define('WP_DEBUG_DISPLAY', false);`

##SCRIPT_DEBUG
By default WordPress core will use minified versions of CSS and JS files, if you want to change this to make WordPress use the full dev version of the CSS and JS then you can set the `SCRIPT_DEBUG` variable to true.
ini_set('log_errors','On');
ini_set('display_errors','Off');
ini_set('error_reporting', E_ALL );
`define('SCRIPT_DEBUG', true);`

##SAVEQUERIES
To debug database queries you can use this constant variable `SAVEQUERIES`, this will store each query that is made on the database and how long it takes to execute. Be aware that this can slow down your site so only make sure this is only turned on while debugging.

`define('SAVEQUERIES', true);`

To check on these queries you can access them in the global variable `$wpdb`.

```
echo '<pre>';
var_dump($wpdb->queries);
echo '</pre>';
```

##Changing Debug Depending On Environment

###Dev
In development environment you would want to turn on debugging, display them on the screen and store the errors in the debug file.

###UAT
In a UAT environment you would still want debug on but you won't want to display these on the screen so we can store them in the debug file.

###Live
In the Live environment you would of hopefully resolved all the errors in your code so you can turn off debugging.

To change this in the `wp-config.php`  you can use the following code.

```
switch( $_SERVER['SERVER_NAME'])
{
    // Dev
    case 'dev.example.com':
        define('WP_DEBUG', true);
        define('WP_DEBUG_LOG', true);

        define('ENV', 'dev');
    break;
    
    // UAT
    case 'uat.example.com':
        define('WP_DEBUG', true);
        define('WP_DEBUG_LOG', true);
        define('WP_DEBUG_DISPLAY', false);

        define('ENV', 'uat');
    break;
    
    // Live
    case 'live.example.com':
        define('WP_DEBUG', false);

        define('ENV', 'live');
    break;
}
```

However, the problem is that some times the above does not work.
That can happen most times on cheap shared hosts that force displaying PHP warnings and notices.
In that case, you can replace this line from your wp-config.php file:

    define('WP_DEBUG', false);

with this:

    ini_set('log_errors','On');
    ini_set('display_errors','Off');
    ini_set('error_reporting', E_ALL );
    define('WP_DEBUG', false);
    define('WP_DEBUG_LOG', true);
    define('WP_DEBUG_DISPLAY', false);
