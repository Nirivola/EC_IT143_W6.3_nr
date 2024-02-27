--Perform a "0 results expected" test
--How to extract first name from Contact name?
--customerName = Alfreds Futterkiste -> Alfreds
--Google search "how to extract first Name From combined name tsql stack Overflow"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name


WITH s1 --Use a common tABLE expression and compare first name to first_name2 
	AS (	SELECT t.ContactName
			,LEFT(t.ContactName,CHARINDEX(' ',t.ContactName + ' ' )-1)  AS FIRST_NAME,
			dbo.udf_parse_first_name(t.ContactName) AS first_name2
			FROM [dbo].[v_w3_schools_customers] AS t)
	SELECT s1.*
	FROM s1
	WHERE s1.FIRST_NAME<>s1.first_name2;
