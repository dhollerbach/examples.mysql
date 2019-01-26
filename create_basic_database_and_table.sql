# Set variables
SET @database = 'employees'
SET @table = 'employees'
SET @starting_increment = 10000
SET @default_status = 'employed'

# Creates a database
CREATE DATABASE @database;

# Creates a table
USE @database;
CREATE TABLE @table (
  id INT NOT NULL AUTO_INCREMENT=@starting_increment PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  status VARCHAR(255) NOT NULL DEFAULT @default_status
);

# Outputs the newly created table
DESC @table;
