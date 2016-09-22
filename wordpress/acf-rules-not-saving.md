## ACF rules not saving, too many flexible content blocks

Add the below .htaccess entries

```
php_value max_input_nesting_level 128
php_value max_input_time 300
php_value max_input_vars 5000
php_value max_execution_time 300
php_value post_max_size 32M
```
