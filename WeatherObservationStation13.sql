-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem

select round(sum(s.lat_n), 4)
from station s
where s.lat_n between 38.7880 and 137.2345;
