-- https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

select avg(c.population)
from city c
where c.district = 'California';
