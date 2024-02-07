select * from customer;

select * from rental;

select
    c.first_name,
    c.last_name,
    r.rental_date,
    r.return_date,
    EXTRACT(day FROM (r.return_date - r.rental_date)) AS over_time
from
    customer c
inner join
    rental r on c.customer_id = r.customer_id
where
    extract(day from (r.return_date - r.rental_date)) > 7 ;


 
	