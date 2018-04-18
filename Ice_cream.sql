create database ice_cream_db;

use ice_cream_db;

DROP table IF EXISTS flavors;
create table flavors(
	flavor varchar(20),
    rating integer(20),
    price decimal(20,2)
);

insert into flavors(flavor,rating,price)
value ('Avocado',65,1.25);
insert into flavors(flavor,rating,price)
value ('Banana',80,2.5);
insert into flavors(flavor,rating,price)
value ('Vanilla',90,1.25);
insert into flavors(flavor,rating,price)
value ('Green tea',100,2.5);
insert into flavors(flavor,rating,price)
value ('Chololate',70,2.75);

