/*
 * A group of social scientists is studying American movie watching habits.
 * To help them, select the titles of all films that have never been rented by someone who lives in the United States.
 *
 * NOTE:
 * Not every film in the film table is available in the store's inventory,
 * and you should only return films in the inventory.
 *
 * HINT:
 * This can be solved either with a LEFT JOIN or with the NOT IN operator.
 * You may choose whichever solution makes the most sense to you.
 */
select title 
from film f
inner join inventory i on i.film_id = f.film_id
where title not in (
	select title 
	from film f
	inner join inventory i on f.film_id = i.film_id
	inner join rental r on r.inventory_id = i.inventory_id
	inner join customer c on c.customer_id = r.customer_id
	inner join address a on a.address_id = c.address_id
	inner join city on city.city_id = a.city_id
	inner join country on country.country_id = city.country_id
	where country = 'United States' 
	group by title)
group by title
order by title
