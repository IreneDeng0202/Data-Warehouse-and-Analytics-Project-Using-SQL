/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups.
/*

USE master;

GO

--drop and recreate the 'datawarehouse' database
IF exists
  (SELECT 1
   FROM sys.databases
   WHERE name='datawarehouse') BEGIN
ALTER DATABASE datawarehouse
SET single_user WITH
ROLLBACK IMMEDIATE;


DROP DATABASE datawarehouse;

END;

GO

-- Create Database 'Datawarehouse'

CREATE DATABASE datawarehouse;

GO

USE datawarehouse;

--drop and recreate schemas
 IF EXISTS
  (SELECT 1
   FROM sys.schemas
   WHERE name = 'silver')
DROP SCHEMA silver;

GO

IF EXISTS
  (SELECT 1FROM sys.schemas
   WHERE name = 'gold')
DROP SCHEMA gold;

GO

IF exists
  (SELECT 1
   FROM sys.schemas
   WHERE name='broze')
DROP SCHEMA broze;

GO

-- create Schema

CREATE SCHEMA silver;

GO


CREATE SCHEMA gold;

GO


CREATE SCHEMA bronze;

GO


