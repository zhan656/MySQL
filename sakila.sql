select address, city from sakila.address
left join sakila.city
	on sakila.address.city_id = sakila.city.city_id;
    
    
use sakila;


 select city, city_id 
 from city
 where city = "Qalyub"
	 or city =  "Qinhuangdao"
	 or city  = "Qomsheh"
     or city = "Quilmes";
     
select district from address
where city_id in
( select city_id 
 from city
 where city = "Qalyub"
	 or city =  "Qinhuangdao"
	 or city  = "Qomsheh"
     or city = "Quilmes"
);

select city_id, city from city where city like "A%"; 
-- all cities which have names start with letter 'A"

select f.title,count(inv.store_id) as 'Number of copies'
from film as f
left join inventory as inv
	on f.film_id = inv.film_id
group by f.title;

select title,count(r.rental_id) as "Rent Counts"
from rental r, film f, inventory i
where r.inventory_id = i.inventory_id
and  f.title = "Blanket Beverly"
and i.film_id = f.film_id;

-- select film_id from film where title = "Blanket Beverly";


