USE sakila;

select * from address;

select  * from city;

select a.*, b.city  
from address a 
join city b 
on a.city_id = b.city_id ;

SELECT * 
FROM address a 
join city b 
using(city_id);

SELECT * 
FROM film 
WHERE title = 'early home';

SELECT * 
FROM inventory 
WHERE film_id = 268 ;

SELECT * 
FROM inventory i 
JOIN film f 
on i.film_id = f.film_id 
where f.title = 'Early Home';

SELECT i.inventory_id, i.film_id, i.store_id, f.title  
FROM inventory i 
JOIN film f 
on i.film_id = f.film_id 
where f.title = 'Early Home';


SELECT * 
FROM inventory 
WHERE film_id in (
	SELECT film_id 
    FROM film 
    where title = 'Early Home'
);

SELECT * 
FROM inventory 
WHERE film_id in (
	SELECT film_id 
    FROM film 
    where title like '%Home'
);


create view vw_inventory_with_title as 
SELECT i.inventory_id, i.film_id, i.store_id, f.title  
FROM inventory i 
JOIN film f 
on i.film_id = f.film_id 
where f.title = 'Early Home';

select * 
from vw_inventory_with_title;


