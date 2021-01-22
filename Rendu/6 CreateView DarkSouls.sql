/*Author : Cyprien Jaquier, Loik Meylan
  Date   : 21/01/2021
  Project: Darksouls
*/
USE Darksouls ;
-- Create the views

GO
	CREATE VIEW [dbo].[V_accounts]
AS
SELECT count(*) AS [accounts]
FROM [dbo].[accounts]

GO

CREATE VIEW [dbo].[V_areas]
AS
SELECT count(*) AS [areas]
FROM [dbo].[areas]

GO

CREATE VIEW [dbo].[V_monsters_live_areas]
AS
SELECT count(*) AS [monsters_live_areas]
FROM [dbo].[monsters_live_areas]

GO

CREATE VIEW [dbo].[V_armors]
AS
SELECT count(*) AS [armors]
FROM [dbo].[armors]

GO

CREATE VIEW [dbo].[V_armors_need_statistics]
AS
SELECT count(*) AS [armors_need_statistics]
FROM [dbo].[armors_need_statistics]

GO

CREATE VIEW [dbo].[V_bonfires]
AS
SELECT count(*) AS [bonfires]
FROM [dbo].[bonfires]

GO

CREATE VIEW [dbo].[V_characters]
AS
SELECT count(*) AS [characters]
FROM [dbo].[characters]

GO

CREATE VIEW [dbo].[V_monsters]
AS
SELECT count(*) AS [monsters]
FROM [dbo].[monsters]

GO

CREATE VIEW [dbo].[V_progressions]
AS
SELECT count(*) AS [progressions]
FROM [dbo].[progressions]

GO

CREATE VIEW [dbo].[V_statistics]
AS
SELECT count(*) AS [statistics]
FROM [dbo].[statistics]

GO

CREATE VIEW [dbo].[V_weapons]
AS
SELECT count(*) AS [weapons]
FROM [dbo].[weapons]

GO

CREATE VIEW [dbo].[V_weapons_need_statistics]
AS
SELECT count(*) AS [weapons_need_statistics]
FROM [dbo].[weapons_need_statistics]
 GO

 USE master;