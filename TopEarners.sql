-- https://www.hackerrank.com/challenges/earnings-of-employees/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select (e1.salary * e1.months), count(*)
from employee e1
where (e1.salary * e1.months) = (select max(e2.months * e2.salary) from employee e2)
group by (e1.salary * e1.months);
