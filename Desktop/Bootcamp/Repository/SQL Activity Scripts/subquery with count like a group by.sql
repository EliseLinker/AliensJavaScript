USE sakila;

create view vw_title_inventory as 
select title, count(*) 
from film a 
join inventory b 
on a.film_id = b.film_id 
group by title 
order by title; 

select * 
from vw_title_inventory;

select title, (
	SELECT count(*) 
	FROM Inventory 
	WHERE film.film_id = inventory.film_id) AS 'Number of Copies'
FROM film;

select * 
from film f
left outer join film_actor fa 
on  f.film_id = fa.film_id 
where fa.film_id is null;


select First_name, last_name
from actor a 
where actor_id in 
(
	select actor_id 
	from film_actor fa 
	where film_id in 

(
	SELECT film_id 
	FROM FILM 
	WHERE TITLE LIKE '%Alter Victory%'
));



