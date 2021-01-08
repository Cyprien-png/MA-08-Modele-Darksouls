/*Author : Cyprien Jaquier
  Date   : 08/01/2021
  Project: Darksouls
*/

--Create the Database
drop database Dark_Souls
USE master ;
GO 
CREATE DATABASE Dark_souls
/*ON PRIMARY
( NAME = Dark_souls_dat,
    FILENAME = 'C:\Users\Cyprien.Jaquier\Documents\GitHub\MA-08-Modele-Darksouls\Dark_souls_dat.mdf',
    SIZE = '10MB',
    MAXSIZE = '50MB',
    FILEGROWTH = '10 %' )
    LOG ON  
( NAME =  Dark_souls_log,  
    FILENAME = 'C:\Users\Cyprien.Jaquier\Documents\GitHub\MA-08-Modele-Darksouls\Dark_souls_log.ldf',  
    SIZE = '5MB',  
    MAXSIZE = '25MB',  
    FILEGROWTH = '5MB' ) ;  
GO 
*/

 USE Dark_souls;

--Create the accounts table
CREATE TABLE accounts
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  pseudo varchar (45) NOT NULL,
	  mail varchar (70) NOT NULL,
	  "password" varchar (45) NOT NULL )

--Create the areas table
 CREATE TABLE areas
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  bosses int,
	  bonfires int,
	  bonfires_id int NOT NULL )						--FK

--Create the areas_has_monsters table
CREATE TABLE areas_has_monsters
	( areas_id int NOT NULL PRIMARY KEY,
	  monsters_id int NOT NULL PRIMARY KEY )

--Create the armors table
 CREATE TABLE armors
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  vigor int NOT NULL,
	  resistance int NOT NULL )

--Create the bonfires table
 CREATE TABLE bonfires
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) NOT NULL,
	  number int UNIQUE NOT NULL )
	  
--Create the characters table
 CREATE TABLE characters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  accounts_id int NOT NULL,							--FK
	  statistics_id int NOT NULL,						--FK
	  progressions int NOT NULL,)						--FK

--Create the monsters table
 CREATE TABLE monsters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "type" int NOT NULL,
	  boss bit NOT NULL,
	  "name" varchar (45) NOT NULL,
	  health int NOT NULL,
	  damage int NOT NULL )

--Create the monsters table
 CREATE TABLE monsters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "type" int NOT NULL,
	  boss bit NOT NULL,
	  "name" varchar (45) NOT NULL,
	  health int NOT NULL,
	  damage int NOT NULL )