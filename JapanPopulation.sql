-- https://www.hackerrank.com/challenges/japan-population/problem

select sum(c.population)
from city c
where c.countrycode = 'JPN';
