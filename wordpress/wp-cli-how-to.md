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

List Plugins

`wp plugin list`

Install and activate plugin at once

`wp plugin install --activate akismet`

Deactivate plugin

`wp plugin deactivate akismet`

Delete plugin without deactivating or uninstalling

`wp plugin delete akismet`

Update plugins

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

`[--hard]`

  Perform a hard flush - update .htaccess rules as well as rewrite rules in database. Works only on single site installs.

```
wp rewrite flush
wp rewrite structure '/%postname%'
```

## Search/replace strings in the database

Search and replace database

`wp search-replace http://example.dev http://example.com`

Run search/replace operation but dont save in database

`wp search-replace http://example.dev http://example.com`

Turn your production multisite database into a local dev database

`wp search-replace --url=example.com example.com example.dev 'wp_*_options' wp_blogs`

Search/replace to a SQL file without transforming the database

`wp search-replace foo bar --export=database.sql`

## Download, install, update and otherwise manage WordPress proper

Display the WordPress version

`wp core version`

Update WordPress

`wp core update`

Update the WordPress database

`wp core update-db`

Update databases for all sites on a network

`wp core update-db --network`

##  Perform basic database operations

Export database with drop query included

`wp db export --add-drop-table`

Import a MySQL database from a file or from STDIN

`wp db import wordpress_dbase.sql`
