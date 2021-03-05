/*
 * Use a subquery to select the film_id and title columns
 * for all films whose rental_rate is greater than the average.
 * Use the film table and order by title.
 *
 * HINT:
 * The postgresqltutorial.com website has a solution for this problem.
 * Note that I am using the sample soluition, it is not my own. 
 */
select 
	film_id,
	title 
from 
	film
where rental_rate > (
	select avg(rental_rate) 
	from film
)
order by title 

