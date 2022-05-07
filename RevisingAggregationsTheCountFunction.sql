-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

select count(*)
from city c
where c.population > 100000;
