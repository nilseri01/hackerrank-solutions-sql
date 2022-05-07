-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select n,
case when (p is NULL) then 'Root'
     when (n not in (select nvl(p, '-1') from bst)) then 'Leaf'
     else 'Inner'
     end
from bst
order by n asc;
