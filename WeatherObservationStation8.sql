-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select distinct s.city from station s where 
substr(lower(nvl(s.city, 'x')), 1, 1) in ('a', 'e', 'i', 'o', 'u')
and substr(nvl(s.city, 'x'), length(nvl(s.city, 'x')), 1) in ('a', 'e', 'i', 'o', 'u');
