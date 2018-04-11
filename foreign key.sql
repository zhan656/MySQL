-- Let's create a new database
CREATE DATABASE customer_data;

USE customer_data;

-- Let's make a new table
CREATE TABLE customer (
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

-- And then populate that table
INSERT INTO customer (first_name, last_name, email, phone)
VALUES
("Bob", "Smith", "bobsmith@email.com", "435-344-2245"),
("Jane", "Davidson", "jdavids@email.com", "332-776-4678"),
("Jimmy", "Bell", "jimmyb@email.com", "221-634-7753"),
("Stephanie", "Duke", "sd@email.com", "445-663-5799");

-- View our table
SELECT * FROM customer;

create table customer_email (
	
/*
TO DO:
  1. Create a new table to hold customers' emails with a foreign key that references the customer table
  2. Populate the email table with data from the customer table
  3. Create a new table to hold customers' phones with a foreign key that references the customer table
  4. Populate the phone table with data from the customer table
*/
 id INTEGER(11) AUTO_INCREMENT NOT NULL,
 email VARCHAR(30) NOT NULL,
 customer_id INTEGER(10) NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (customer_id) REFERENCES customer(id) 
);

INSERT INTO customer_email (email, email_id)
VALUES
("bobsmith@email.com", 1),
("jdavids@email.com", 2),
("jimmyb@email.com", 3),
("sd@email.com", 4);

select * from customer_phone;

create table customer_phone (
	
 id INTEGER(11) AUTO_INCREMENT NOT NULL,
 phone VARCHAR(30) NOT NULL,
 customer_id INTEGER(10) NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (email_id) REFERENCES customer(id) 
);

INSERT INTO customer_email (email, email_id)
VALUES
("bobsmith@email.com", 1),
("jdavids@email.com", 2),
("jimmyb@email.com", 3),
("sd@email.com", 4);

	
/*
TO DO:
  1. Create a new table to hold customers' emails with a foreign key that references the customer table
  2. Populate the email table with data from the customer table
  3. Create a new table to hold customers' phones with a foreign key that references the customer table
  4. Populate the phone table with data from the customer table
*/



