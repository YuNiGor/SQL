SELECT id, service_class, price
FROM tickets
WHERE (service_class = 'Economy' AND price BETWEEN 10000 AND 11000)
   OR (service_class = 'PremiumEconomy' AND price BETWEEN 20000 AND 30000)
   OR (service_class = 'Business' AND price > 100000);

SELECT side_number,
       CASE
           WHEN year_of_production < 2000 THEN 'Old'
           WHEN year_of_production BETWEEN 2000 AND 2010 THEN 'Mid'
           ELSE 'New'
       END AS age
FROM airplanes
WHERE flight_range <= 10000
ORDER BY age ASC;

SELECT id, tripid,
       CASE service_class
           WHEN 'Economy' THEN price * 0.85
           WHEN 'Business' THEN price * 0.9
           WHEN 'PremiumEconomy' THEN price * 0.8
           ELSE price
       END AS newprice
FROM tickets
WHERE tripid IN ('LL4S1G8PQW', '0SE4S0HRRU', 'JQF04Q8I9G');
