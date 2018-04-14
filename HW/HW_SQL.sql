use sakila;


-- 1a. Display the first and last names of all actors from the table actor. 
select first_name, last_name from actor;

-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column Actor Name. 
select concat(first_name," ", last_name) as "Actor Name" from actor;

-- 2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." What is one query would you use to obtain this information?
select actor_id, first_name, last_name 
from actor
where first_name = 'Joe';

-- 2b. Find all actors whose last name contain the letters GEN:
select * 
from actor
where last_name like '%GEN%';

-- 2c. Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order:
select * 
from actor
where last_name like '%LI%'
order by last_name, first_name;

-- 2d. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China:
select country_id, country
from country
where country in 
('Afghanistan', 'Bangladesh','China');

-- 3a. Add a middle_name column to the table actor. Position it between first_name and last_name. Hint: you will need to specify the data type.
ALTER TABLE actor ADD middle_name VARCHAR( 255 ) after first_name;

-- 3b. You realize that some of these actors have tremendously long last names. Change the data type of the middle_name column to blobs.
alter table actor modify middle_name blob;

-- 3c. Now delete the middle_name column.
ALTER TABLE actor DROP COLUMN middle_name;

-- 4a. List the last names of actors, as well as how many actors have that last name.
select distinct last_name, count(last_name) as "Count"
from actor
group by last_name;

-- 4b. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors
select distinct last_name, count(last_name) as "Count>=2"
from actor
group by last_name
having count(last_name) > 1;


-- 4c. Oh, no! The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS, the name of Harpo's second cousin's husband's yoga teacher. Write a query to fix the record.
UPDATE actor
    SET first_name = 'HARPO'
    WHERE last_name = 'WILLIAMS' 
	AND first_name = 'GROUCHO';

select first_name,last_name 
from actor
where first_name = "harpo";

-- 4d. Perhaps we were too hasty in changing GROUCHO to HARPO. It turns out that GROUCHO was the correct name after all! In a single query, if the first name of the actor is currently HARPO, change it to GROUCHO. Otherwise, change the first name to MUCHO GROUCHO, as that is exactly what the actor will be with the grievous error. BE CAREFUL NOT TO CHANGE THE FIRST NAME OF EVERY ACTOR TO MUCHO GROUCHO, HOWEVER! (Hint: update the record using a unique identifier.)
UPDATE actor
    SET first_name = 'GROUCHO'
    WHERE last_name = 'WILLIAMS' 
	AND first_name = 'harpo';

select first_name,last_name 
from actor
where first_name = "GROUCHO" 
and last_name = "WILLIAMS";

-- 5a. You cannot locate the schema of the address table. Which query would you use to re-create it? 
-- Hint: https://dev.mysql.com/doc/refman/5.7/en/show-create-table.html
SHOW CREATE TABLE address;


-- 6a. Use JOIN to display the first and last names, as well as the address, of each staff member. Use the tables staff and address:
select 
s.first_name, s.last_name, a.address
from staff s
left join address a
	 on s.address_id = a.address_id;


-- 6b. Use JOIN to display the total amount rung up by each staff member in August of 2005. Use tables staff and payment. 
select 
concat(s.first_name," ", s.last_name) as "Staff Name",
sum(p.amount) as 'Amount'
from staff s
left join payment p
	on p.staff_id = s.staff_id
where p.payment_date like "2005-08%"
group by s.first_name;

-- 6c. List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.
select f.title, count(fa.actor_id) as "#ofActors"
from film f
inner join film_actor fa
	on f.film_id = fa.film_id
group by f.title;


-- 6d. How many copies of the film Hunchback Impossible exist in the inventory system?
select f.title 'Film Title', count(store_id) as '#ofCopies'
from 
film f
left join inventory i
on f.film_id = i.film_id 
where f.title = 'Hunchback Impossible';

-- 6e. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name:
select 
concat(c.last_name,", ", c.first_name) as "Customer Name",
sum(p.amount) as "Amount"
from customer c
left join payment p 
on p.customer_id = c.customer_id
group by c.last_name;

-- 7a. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. As an unintended consequence, films starting with the letters K and Q have also soared in popularity. Use subqueries to display the titles of movies starting with the letters K and Q whose language is English. 
select title 
from film
where title like "k%" 
or title like "q%"
and language_id in(
select language_id
from language
where name = 'english'
);

-- 7b. Use subqueries to display all actors who appear in the film Alone Trip.
select first_name,last_name
from actor
where actor_id in(
	select actor_id
	from film_actor
	where film_id in(
		select film_id
		from film
		where title = "Alone Trip"
));



