# Manage wordpress configurations like update plugins, setup config file, generate .htaccess file

## Installing
```
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
wp --info
```

## Launch PHP’s built-in web server
```
wp server
wp server --host=0.0.0.0
sudo wp server --host=localhost.localdomain --port=80
```

## Plugins

- List Plugins

`wp plugin list`

- Install and activate plugin at once

`wp plugin install --activate akismet`

- Deactivate plugin

`wp plugin deactivate akismet`

- Delete plugin without deactivating or uninstalling

`wp plugin delete akismet`

- Update plugins

```
wp plugin update akismet
wp plugin update --all
```

## Manage rewrite rules
To regenerate a .htaccess file with WP-CLI, you’ll need to add the mod_rewrite module to your wp-cli.yml or config.yml. 

Create `wp-cli.yml` file and write below
```
apache_modules:
  - mod_rewrite
```

Flush rewrite rules.
`wp rewrite flush`

Update the permalink structure
`wp rewrite structure '/%postname%'`

[--hard]
Perform a hard flush - update .htaccess rules as well as rewrite rules in database. Works only on single site installs.
```
wp rewrite flush
wp rewrite structure '/%postname%'
```
