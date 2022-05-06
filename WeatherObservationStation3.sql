-- https://www.hackerrank.com/challenges/weather-observation-station-3
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select distinct s.city from station s where mod(s.id, 2) = 0;
