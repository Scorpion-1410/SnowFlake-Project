-- 1. which airline have maximum fights in the morning and Early_morning
select airline,count(*) as Number_Of_Flights, dense_rank() over(order by count(*) DESC) as RANK from flight_scd where departure_time in ('Morning','Early_Morning') group by airline;
-- 2. Does the flights with one and more than one stops have less price compared to flights with zero stops
select airline, source_city, departure_time, price from flight where stops = 'zero' and airline = 'AirAsia';
select airline, source_city, departure_time, price from flight where stops = 'one' and airline = 'AirAsia';
-- 3. Average travel duration for flights with one and more than one stops
select avg(duration) from flight where stops in ('one','two_or_more');
-- 4. Which airlines makes highest selling for Afternoon flights
select airline,sum(price) from flight where departure_time = 'Afternoon' group by airline order by sum(price) desc;
--select airline, flight, price from flight where price = (select sum(price) from flight where departure_time = 'Afternoon' group by airline) ;
-- 5. which source||destination flight fare is less
select source_city, destination_city, min(price) from flight group by source_city, destination_city; 
