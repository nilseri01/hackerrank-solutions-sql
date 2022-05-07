-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select w.id, wp.age, w.coins_needed, w.power
from  wands w, wands_property wp 
where w.code = wp.code and wp.is_evil = 0 
and w.coins_needed = (
    select min(w1.coins_needed) 
    from  wands w1, wands_property wp1 
    where w1.code = wp1.code 
    and wp.age = wp1.age and w.power = w1.power -- match order by
) 
order by w.power desc, wp.age desc;
