-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
-- solution: https://stackoverflow.com/questions/9930364/how-do-i-print-a-triangle-of-stars-using-sql

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select rpad('* ', level * 2, '* ')
from dual 
connect by level <= 20;
