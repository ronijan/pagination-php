### Bootstrap pagination in PHP and MySQL

* Change connection 

>  LOCALHOST: 'localhost'
   USERNAME: 'username';
   PASSWORD: '';
   DATABASE_NAME: 'db';

> Change Table Name: change to whatever your Table name is. currently is `contacts`

* Composer install
 $ `composer install -o`
 
* The Table `contacts.sql` with dummy data is in `src\migrations` 
    you can import this directly to your Database.
    
* Run server
    $ `php -S localhost:8080`