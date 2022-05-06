-- https://www.hackerrank.com/challenges/weather-observation-station-4

/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
select (s.all_count - ds.distinct_count) from
(select count(*) as all_count from station) as s, 
(select count(distinct city) as distinct_count from station) as ds;
