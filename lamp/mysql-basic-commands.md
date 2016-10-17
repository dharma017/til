### How to Access the MySQL shell
```
mysql -u root -p
```

### How to Create and Delete a MySQL Database

You can quickly check what databases are available by typing:

```
SHOW DATABASES;
```

Creating a database is very easy:

```
 CREATE DATABASE database_name;
 CREATE DATABASE database_name CHARACTER SET utf8 COLLATE utf8_unicode_ci;
```
In MySQL, the phrase most often used to delete objects is Drop. You would delete a MySQL database with this command:

```
 DROP DATABASE _database_name;
```

### How To Create a New User and Grant Permissions in MySQL
Let’s start by making a new user within the MySQL shell:

```
CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
```
Therefore, the first thing to do is to provide the user with access to the information they will need.

```
GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
```

For specific db only.

```
GRANT ALL PRIVILEGES ON dbname.* TO 'newuser'@'localhost';
```

The asterisks in this command refer to the database and table (respectively) that they can access—this specific command allows to the user to read, edit, execute and perform all tasks across all the databases and tables.

Once you have finalized the permissions that you want to set up for your new users, always be sure to reload all the privileges.

```
FLUSH PRIVILEGES;
```

Your changes will now be in effect.

Just as you can delete databases with DROP, you can use DROP to delete a user altogether:

```
 DROP USER ‘demo’@‘localhost’;
```

To test out your new user, log out by typing

```
 quit 
```

and log back in with this command in terminal:

```
mysql -u [username]-p
```
