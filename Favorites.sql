drop database IF EXISTS animals_db;
-- Drops the favorite_db if it exists currently --
DROP DATABASE IF EXISTS favorite_db;
-- Creates the "favorite_db" database --
CREATE DATABASE favorite_db;
-- Make it so all of the following code will affect favorite_db --
use favorite_db;
-- Creates the table "favorite_foods" within favorite_db --
CREATE TABLE favorite_foods (
  -- Make a string column called "food" which cannot contain null --
  food VARCHAR(50) NOT NULL,
  score INTEGER(10)
  -- Make an numeric column called "score" --
);


CREATE TABLE favorite_songs (
  -- Make a string column called "song" which cannot contain null --
  song VARCHAR(100) NOT NULL,
  -- Make a string column called "artist" --
  Artist VARCHAR(50),
  -- Make an integer column called "score" --
  score INTEGER(10)
);

CREATE TABLE favorite_movies (
	id int NOT NULL auto_increment,
  -- Create a numeric column called "id" which automatically increments and cannot be null --
  film VARCHAR(100) NOT NULL,
  -- Create a string column called "movie" which cannot be null --
  Five_times boolean,
  -- Create a boolean column called "five_times" that sets the default value to false if nothing is entered --
  score integer(10),
  -- Make an integer column called "score" --
  primary key (id)
  -- Set the primary key of the table to id --
);

select * from favorite_movies;
