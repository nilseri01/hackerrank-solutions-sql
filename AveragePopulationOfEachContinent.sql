-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select co.continent, floor(avg(ci.population))
from city ci, country co
where ci.countrycode = co.code
group by co.continent;
