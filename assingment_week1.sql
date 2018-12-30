/*question 1*/

select a.dest, max(a.distance)
from flights as a;

/*question 2*/
create table max_seats_engines as
select max(seats) as max_seats, engines from planes
group by engines;

select a.model, a.seats, a.engines
from planes as a inner join max_seats_engines as b 
on a.seats=b.max_seats and a.engines=b.engines
group by model
order by a.engines;

/*question 3*/
select count(*) from flights;


/*question 4*/
select carrier, count(*) as num_flights 
from flights
group by carrier;

/*question 5*/
select carrier, count(*) as num_flights 
from flights
group by carrier
order by num_flights desc;

/*question 6*/
select carrier, count(*) as num_flights 
from flights
group by carrier
order by num_flights desc
limit 5;

/*question 7*/
select carrier, count(*) as num_flights 
from flights
where distance>=1000
group by carrier
order by num_flights desc
limit 5;

/*question 8: Calculate the average air time of flights by carriers arranged in descending order*/
select carrier, avg(air_time) as avg_time
from flights
group by carrier
order by avg_time desc;

