/*
==============================================
Create Database and Schemas
==============================================
Script Purpose :
  This script create a new database named 'DataWarehouse' after checking if it already exists.
  Additionally ,the script sets up three schemas within the database 'bronze','silver' and 'gold'


*/

-- create Database 'DataWarehouse'
use master;
Go
  
-- Drop and recreate the 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse
END;
GO

create database DataWarehouse;
use DataWarehouse;
GO
  
create schema bronze;
Go
  
create schema silver;
Go
  
create schema gold;
Go
