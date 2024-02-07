select * from rental;

select * from customer;


with lending as(
	select 
		r.customer_id,
		count (*) as sum_lending_on_monday
	from
	    rental r
	where
	    extract(isodow from r.rental_date) = 1 -- peminjaman pada hari senin
	group by
		r.customer_id -- peminjaman  pd hari senin dikelompokkan sesuai dgn customer_id
	having
		count (*) > 1 -- cutomer_id yang sama dihitung jumlahnya dan yg memenuhi syarat>1 peminjaman
)
select 
	c.first_name,
	c.last_name,
	r.rental_date,
	l.sum_lending_on_monday
from
	customer c
inner join
    rental r on c.customer_id = r.customer_id
inner join
    lending l on c.customer_id = l.customer_id
where 
	extract(isodow from r.rental_date) = 1;