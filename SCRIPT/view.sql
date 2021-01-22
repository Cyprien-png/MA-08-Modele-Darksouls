/*Author : Cyprien Jaquier, Loik Meylan
  Date   : 21/01/2021
  Project: Darksouls
*/
USE Darksouls ;
GO
	CREATE VIEW V_accounts
	 AS "accounts" SELECT COUNT(*)
	FROM accounts