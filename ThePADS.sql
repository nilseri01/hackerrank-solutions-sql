-- https://www.hackerrank.com/challenges/the-pads/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select (o.name || '(' || substr(o.occupation, 1, 1) || ')')
from occupations o
order by o.name;
select ('There are a total of ' || o_count || ' ' || lower(occupation) || 's.')
from
(
    select o.occupation, count(*) as o_count
    from occupations o
    group by o.occupation
) order by o_count asc, occupation asc;
