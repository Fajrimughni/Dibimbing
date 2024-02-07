select * from film_actor ;

select
    a.first_name,
    a.last_name,
    count(f.film_id) as sum_film,
    rank() over (order by count (f.film_id) asc) as ranked_total_film
from
    actor a
inner join
    film_actor f on a.actor_id = f.actor_id
group by
    a.first_name, a.last_name
order by
    3,4;

