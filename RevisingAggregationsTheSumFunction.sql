-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

select sum(c.population)
from city c
where c.district = 'California';
