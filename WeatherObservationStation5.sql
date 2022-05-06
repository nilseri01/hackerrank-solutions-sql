-- https://www.hackerrank.com/challenges/weather-observation-station-5

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select shortest_name, shortest_length from
(select city as shortest_name, length(city) as shortest_length from station order by length(city), city asc) where rownum < 2;
select longest_name, longest_length from
(select city as longest_name, length(city) as longest_length from station order by length(city) desc, city asc) where rownum < 2;
