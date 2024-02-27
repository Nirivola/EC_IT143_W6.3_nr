-- Ask the next question
--What is a trigger?

USE [EC_IT143_DA]
GO

SELECT t.CustomerID
      ,t.CustomerName
      ,t.ContactName
	  ,dbo.udf_parse_first_name(t.ContactName) AS ContactName_first_name
	  ,'' AS ContactName_first_name-- How to extract last Name from Contact Name?
      ,t.Address
      ,t.City
      ,t.Country
  FROM [dbo].[v_w3_schools_customers] AS t

GO