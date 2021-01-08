USE master ;
GO 
CREATE DATABASE Dark_souls
ON
( NAME = Dark_souls_dat,
    FILENAME = 'C:\Users\Cyprien.Jaquier\Documents\GitHub\MA-08-Modele-Darksouls\Dark_souls_dat.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5 )