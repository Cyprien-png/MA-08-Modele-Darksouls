/*Author : Cyprien Jaquier, Loik Meylan
  Date   : 08/01/2021
  Project: Darksouls
*/

-- Create the Database
USE master ;
drop database Darksouls
 
CREATE DATABASE Darksouls;

 USE Darksouls;
-- drop table accounts ;
-- Create the accounts table
 CREATE TABLE accounts
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  pseudo varchar (45) NOT NULL,
	  mail varchar (70) NOT NULL,
	  passwords varchar (45) NOT NULL )

-- drop table areas
-- Create the areas table
 CREATE TABLE areas
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  bosses int,
	  bonfires int )

-- Create the monsters table
 CREATE TABLE monsters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "type" varchar (45) NOT NULL,
	  boss bit NOT NULL,
	  "name" varchar (45) NOT NULL,
	  health int NOT NULL,
	  damage int NOT NULL )

-- Create the areas_has_monsters table
CREATE TABLE monsters_live_areas
	( areas_id int ,	-- FK
	  monsters_id int )	-- FK

-- Create the armors table
 CREATE TABLE armors
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) NOT NULL,
	  vigor int NOT NULL,
	  resistance int NOT NULL )

-- Create the bonfires table
 CREATE TABLE bonfires
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) NOT NULL,
	  U_number int UNIQUE NOT NULL,
	  areas_id int )
	  
-- Create the characters table
 CREATE TABLE characters
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  accounts_id int ,							-- FK
	  statistics_id int ,						-- FK
	  progressions_id int )						-- FK

-- Create the progressions table
 CREATE TABLE progressions
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  nbBonfire int,
	  nbBoss int,
	  bonfire_id int )							-- FK
	  
-- Create the statistics table
 CREATE TABLE "statistics"
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "type" varchar (45) NOT NULL UNIQUE,
	  "value" int)

-- Create the statistics_has_armors table
CREATE TABLE armors_need_statistics
	( statistics_id int ,			-- FK
	  armors_id int )				-- FK

	  -- Create the armors table
 CREATE TABLE weapons
	( id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	  "name" varchar (45) UNIQUE NOT NULL,
	  "type" varchar (45),
	  strenght int NOT NULL,
	  damage int NOT NULL )

-- Create the statistics_has_weapons table
CREATE TABLE weapons_need_statistics
	( statistics_id int ,			-- FK
	  weapons_id int )				-- FK

 USE Darksouls;

 -- Constraints FK
ALTER TABLE bonfires WITH CHECK ADD  CONSTRAINT FK_Darksouls_areas FOREIGN KEY(areas_id)
REFERENCES areas(id)

ALTER TABLE monsters_live_areas WITH CHECK ADD  CONSTRAINT FK_Darksouls_monsters FOREIGN KEY(monsters_id)
REFERENCES monsters(id)

ALTER TABLE monsters_live_areas WITH CHECK ADD  CONSTRAINT FK_Darksouls_area FOREIGN KEY(areas_id)
REFERENCES areas(id)

ALTER TABLE armors_need_statistics WITH CHECK ADD  CONSTRAINT FK_Darksouls_statistics FOREIGN KEY(statistics_id)
REFERENCES "statistics"(id)

ALTER TABLE armors_need_statistics WITH CHECK ADD  CONSTRAINT FK_Darksouls_armors FOREIGN KEY(armors_id)
REFERENCES armors(id)

ALTER TABLE weapons_need_statistics WITH CHECK ADD  CONSTRAINT FK_Darksouls_weapons FOREIGN KEY(weapons_id)
REFERENCES  weapons(id)

ALTER TABLE weapons_need_statistics WITH CHECK ADD  CONSTRAINT FK_Darksouls_statistic FOREIGN KEY(statistics_id)
REFERENCES "statistics"(id)

ALTER TABLE characters WITH CHECK ADD  CONSTRAINT FK_Darksouls_accounts FOREIGN KEY(accounts_id)
REFERENCES accounts(id)

ALTER TABLE characters WITH CHECK ADD  CONSTRAINT FK_Darksouls_statisticss FOREIGN KEY(statistics_id)
REFERENCES "statistics"(id)

ALTER TABLE characters WITH CHECK ADD  CONSTRAINT FK_Darksouls_progressions FOREIGN KEY(progressions_id)
REFERENCES progressions(id)

USE Master ;