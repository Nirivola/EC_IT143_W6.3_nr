USE [EC_IT143_DA]
GO

CREATE TRIGGER trg_hello_world_last_mod ON dbo.t_hello_world
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwt_s4_nr
PURPOSE: My script purpose is creating an after-update trigger- last modifed trigger

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     27/02/2024   RNIRIVOLA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
How to keep track of when a record was last modified?
 
******************************************************************************************************************/


UPDATE dbo.t_hello_world 
	SET 
			last_modified_date = GETDATE()

	WHERE my_message IN 
	(
		SELECT DISTINCT 
			 my_message 
		FROM inserted
	);


