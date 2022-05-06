-- https://www.hackerrank.com/challenges/salary-of-employees/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select e.name from employee e where
e.salary > 2000 and e.months < 10
order by e.employee_id asc;
