-- https://www.hackerrank.com/challenges/asian-population/problem

select sum(ci.population)
from city ci, country co
where ci.countrycode = co.code
and co.continent = 'Asia';
