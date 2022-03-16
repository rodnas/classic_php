"# classic_php"  
git init git add README.md 
git commit -m "first commit" 
git branch -M main 
git remote add origin https://github.com/rodnas/classic_php.git 
git push -u origin main

PHP (procedural) version:
PHP 7.3.30
MySQL or MariaDB

create database

insert sql\classic_db.sql

change db access in share\inc\config.inc.php:
$config["configShare"]["databaseServer"] = "localhost";
$config["configShare"]["databaseSelect"] = "classic_db";
$config["configShare"]["databaseUser"] = "root";
$config["configShare"]["databasePassword"] = "";

login
Név: Admin
Jelszó: admin

if logged, start to work

Screenshot

Login:
![login](https://user-images.githubusercontent.com/6502751/158656064-95c19027-6c18-4452-b002-eed1bcc4a18f.jpg)

Vehicle:
![vehicle](https://user-images.githubusercontent.com/6502751/158656197-e97c1f6e-b010-40b9-9082-e5f46dfd01b2.jpg)
![vehicleadd](https://user-images.githubusercontent.com/6502751/158656242-e165c0da-aec2-47b0-9cba-b964944a2550.jpg)

Driver:
![driver](https://user-images.githubusercontent.com/6502751/158656289-b093eff6-572e-409c-852a-dd9211d4202e.jpg)



