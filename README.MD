# General description

Setup consists of 3 parts:
- Database with a table
- Java API that can read data from that table
- Angular JS front-end that which will call Java API to retrieve data from DB and display it as HTML table

## Database setup

Database setup script is located in /docker/api-build/table.sql file. Run it for designated database image to create table compatible with Java API jar file.

## Java API

Java API is already compiled and built for this solution. Jar file is located at /docker/api-build/demo-app.jar, and preset to run with certain docker network setup.

## Angular JS

Angular JS front-end solution source code can be found in /front folder, its ready to use pre-built version is available in /docker/angular-build/angular-tour-of-heroes