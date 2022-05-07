-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select 
case when (t.a + t.b <= t.c or t.b + t.c <= t.a or t.a + t.c <= t.a) then 'Not A Triangle'
     when (t.a = t.b and t.b = t.c) then 'Equilateral'
     when (t.a = t.b or t.b = t.c or t.a = t.c) then 'Isosceles'
     else 'Scalene'
end
from TRIANGLES t;
