
# Project Title

Welcome on my project which is a control in the course of formations which has for goal to create a site of offer of employment


## install project

To install project, run the following command

```bash
  npm ci
  composer install
```

## Database
you will obviously need a MySQL database <br>
( it must be `Utf8_general_ci` the default charset and collation ),<br><br>
for that I give you a link to a tuto: 
https://www.youtube.com/watch?v=7h3rrY_n6fc

after that you can use the `DB_ecfBack.sql` file to hydrate the database.

Don't forget now to change your mysql account info in `src/Database/DB.php` (line 16 to 18);

and now you are ready to go!

## run project

To run project, run the following command

```bash
  php -S localhost:8000
```

To launch the tests, you just have to write in the terminal these 2 commands
```bash
  ./vendor/bin/phpunit src/Test/InscriptionTest.php
  ./vendor/bin/phpunit src/Test/DoStuffOnDataTest.php
```


