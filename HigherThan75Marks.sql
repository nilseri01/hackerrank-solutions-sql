-- https://www.hackerrank.com/challenges/more-than-75-marks/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select s.name from students s where
s.marks > 75
order by (substr(nvl(s.name, 'xxx'), length(nvl(s.name, 'xxx')) - 2, 3)), id asc;
