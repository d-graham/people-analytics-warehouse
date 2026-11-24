/*
Create Database and Schemas

Script Purpose:
    This script creates a new database named 'PeopleWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated.
    Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'PeopleWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution and backup before running script.

*/

-- Warning: this destroys the database if it exists
DROP DATABASE IF EXISTS PeopleWarehouse;
CREATE DATABASE PeopleWarehouse;

-- Create schemas within the database
-- Note: Connect to the new database created before creating schemas
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;


