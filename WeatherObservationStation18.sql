-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select round((max(lat_n) - min(lat_n) + max(long_w) - min(long_w)), 4)
from station;
