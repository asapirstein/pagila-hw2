/*
 * Management wants to purchase new films that they don't already have.
 * Select a list of all films in the film table that are not in the inventory table.
 *
 * HINT:
 * This can be done by either using a LEFT JOIN or by using the NOT IN clause and a subquery.
 */
select title
from film f
left join inventory i using (film_id)
where i.film_id is null 
