select * from actor;

select 
	first_name,
	last_name
from
	actor 
where
	first_name in ('Nick', 'Ed', 'Jennifer')
order by
	first_name asc,	last_name asc;

select * from payment;

select
	payment_id,
	sum(amount) as total_amount
from
	payment
group by
	payment_id
having 
	sum(amount) < 5.99;
	
select * from film;

select
	film_id,
	title,
	description,
	length,
case
	when length >= 100 then 'long film'
	when length between 87 and 99 then 'quite long film'
	when length between 72 and 86 then 'medium film'
	when length <= 71 then 'short film'
end as lenthg_category_film
from
	film; 

select * from rental;

select * from payment;

SELECT
    r.rental_id,
    r.rental_date,
    p.payment_id,
    p.amount
FROM
    rental r
JOIN
    payment p ON r.rental_id = p.rental_id
ORDER BY
    p.amount DESC
LIMIT 10;

select * from city;

SELECT *
FROM address
WHERE city_id = 42
UNION
SELECT *
FROM address
WHERE city_id = 300;
	
	
	