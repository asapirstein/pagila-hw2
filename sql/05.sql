/*
 * Management wants to advertise to actors,
 * and needs a list of all actors who are not also customers.
 *
 * Assume that if an entry in the customer and actor table share a first_name and last_name,
 * then they represent the same person.
 * Then select all actors who are not also customers.
 *
 * HINT:
 * This can be solved using either a LEFT JOIN or the NOT IN operator.
 */
select a.last_name, a.first_name
from actor a
left join customer c on c.last_name = a.last_name and a.first_name = c.first_name
where customer_id is null 
order by a.last_name , a.first_name
