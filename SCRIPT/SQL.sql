/*Author : Cyprien Jaquier, Loik Meylan
  Date   : 21/01/2021
  Project: Darksouls
*/
USE Darksouls ;
GO

-- Requête SQL
SELECT * FROM accounts;
SELECT * FROM characters;
SELECT * FROM progressions;
SELECT * FROM bonfires;
SELECT * FROM areas;
SELECT * FROM areas_live_monsters;
SELECT * FROM monsters;
SELECT * FROM "statistics";
SELECT * FROM armors_need_statistics;
SELECT * FROM armors;
SELECT * FROM weapons_need_statistics;
SELECT * FROM weapons;

-- Pour les Vues
SELECT * FROM V_accounts;
SELECT * FROM V_areas;
SELECT * FROM V_areas_live_monsters;
SELECT * FROM V_armors;
SELECT * FROM V_armors_need_statistics;
SELECT * FROM V_bonfires;
SELECT * FROM V_characters;
SELECT * FROM V_monsters;
SELECT * FROM V_progressions;
SELECT * FROM V_statistics;
SELECT * FROM V_weapons;
SELECT * FROM V_weapons_need_statistics;