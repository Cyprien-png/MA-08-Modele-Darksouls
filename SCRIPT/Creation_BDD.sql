/*Author : Cyprien Jaquier
  Date   : 08/01/2021
  Project: Darksouls
*/

-- Create the Database
USE master ;
drop database Darksouls
--GO 
CREATE DATABASE Darksouls ON PRIMARY
( NAME = Dark_souls_dat,
    FILENAME = 'C:\Data\Cyprien_Jaquier\Darksouls_dat.mdf',
    SIZE = 10MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 10MB )
    LOG ON  
( NAME =  Dark_souls_log,  
    FILENAME = 'C:\Data\Cyprien_Jaquier\Darksouls_log.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;  
--GO 


 USE Darksouls;
-- drop table characters ;
-- Create the accounts table
 CREATE TABLE accounts
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  pseudo varchar (45) NOT NULL,
	  mail varchar (70) NOT NULL,
	  passwords varchar (45) NOT NULL )

-- Create the areas table
 CREATE TABLE areas
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  bosses int,
	  bonfires int,
	  bonfires_id int NOT NULL )	-- FK

-- Create the monsters table
 CREATE TABLE monsters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "type" int NOT NULL,
	  boss bit NOT NULL,
	  "name" varchar (45) NOT NULL,
	  health int NOT NULL,
	  damage int NOT NULL )

-- Create the areas_has_monsters table
CREATE TABLE areas_has_monsters
	( areas_id int NOT NULL,	-- FK
	  monsters_id int NOT NULL )	-- FK

-- Create the armors table
 CREATE TABLE armors
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  vigor int NOT NULL,
	  resistance int NOT NULL )

-- Create the bonfires table
 CREATE TABLE bonfires
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) NOT NULL,
	  number int UNIQUE NOT NULL )
	  
-- Create the characters table
 CREATE TABLE characters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  accounts_id int NOT NULL,							-- FK
	  statistics_id int NOT NULL,						-- FK
	  progressions_id int NOT NULL,)						-- FK

-- Create the progressions table
 CREATE TABLE progressions
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  nbBonfire int,
	  nbBoss int,
	  bonfire_id int NOT NULL )							-- FK
	  
-- Create the statistics table
 CREATE TABLE "statistics"
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "type" varchar (45) NOT NULL UNIQUE,
	  "value" int)

-- Create the statistics_has_armors table
CREATE TABLE statistics_has_armors
	( statistics_id int NOT NULL,			-- FK
	  armors_id int NOT NULL )				-- FK

	  -- Create the armors table
 CREATE TABLE weapons
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  "type" varchar (45),
	  strenght int NOT NULL,
	  damage int NOT NULL )

-- Create the statistics_has_weapons table
CREATE TABLE statistics_has_weapons
	( statistics_id int NOT NULL,			-- FK
	  weapons_id int NOT NULL )				-- FK

GO

 USE Darksouls;

ALTER TABLE areas WITH CHECK ADD  CONSTRAINT FK_Darksouls_bonfires FOREIGN KEY(bonfires_id)
REFERENCES bonfires(id)

ALTER TABLE areas_has_monsters WITH CHECK ADD  CONSTRAINT FK_Darksouls_areas FOREIGN KEY(areas_id)
REFERENCES areas(id)

ALTER TABLE areas_has_monsters WITH CHECK ADD  CONSTRAINT FK_Darksouls_monsters FOREIGN KEY(monsters_id)
REFERENCES monsters(id)

ALTER TABLE characters WITH CHECK ADD  CONSTRAINT FK_Darksouls_accounts FOREIGN KEY(accounts_id)
REFERENCES accounts(id)

ALTER TABLE characters WITH CHECK ADD  CONSTRAINT FK_Darksouls_statistics FOREIGN KEY(statistics_id)
REFERENCES "statistics"(id)

ALTER TABLE characters WITH CHECK ADD  CONSTRAINT FK_Darksouls_progressions FOREIGN KEY(progressions_id)
REFERENCES progressions(id)

USE master ;