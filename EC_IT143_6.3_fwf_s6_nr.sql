--How to extract first name from Contact name?
--customerName = Alfreds Futterkiste -> Alfreds
--Google search "how to extract first Name From combined name tsql stack Overflow"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

USE [EC_IT143_DA]
GO

SELECT t.ContactName
 ,LEFT(t.ContactName,CHARINDEX(' ',t.ContactName + ' ' )-1)  AS FIRST_NAME,
 dbo.udf_parse_first_name(t.ContactName) AS first_name2
 FROM [dbo].[v_w3_schools_customers] AS t
 ORDER BY 1;