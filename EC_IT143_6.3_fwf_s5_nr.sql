Create FUNCTION [dbo].[udf_parse_first_name]
(@v_combined_name AS VARCHAR (500)
)

RETURNS VARCHAR (100)


/*****************************************************************************************************************
NAME:    EC_IT143_6.3_fwf_s5_nr
PURPOSE: My script purpose is creating a user-defined scalar function, parse first name 

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     27/2/2024   RNIRIVOLA       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
Adapted from the following...
https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

 --How to extract first name from Contact name?
--customerName = Alfreds Futterkiste -> Alfreds
--Google search "how to extract first Name From combined name tsql stack Overflow"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name
******************************************************************************************************************/

BEGIN 

	DECLARE @v_first_name AS VARCHAR (100);
	SET @v_first_name=LEFT(@v_combined_name,CHARINDEX(' ',@v_combined_name + ' ' )-1);
	RETURN @v_first_name;
end 

