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
