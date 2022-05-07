-- https://www.hackerrank.com/challenges/population-density-difference/problem

select max(c.population) - min(c.population)
from city c;
