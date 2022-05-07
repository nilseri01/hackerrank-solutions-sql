-- https://www.hackerrank.com/challenges/challenges/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select oc.hacker_id, h.name, oc.c_count
from hackers h,
(
    select hacker_id, count(*) as c_count
    from challenges
    group by hacker_id
) oc
where h.hacker_id = oc.hacker_id and
(
    oc.c_count =
    (
        select t_count from -- top count
        (
            select hacker_id, count(*) as t_count
            from challenges
            group by hacker_id
            order by 2 desc
        ) where rownum < 2
    ) or not exists
    (
        select 1
        from challenges c
        where c.hacker_id <> oc.hacker_id
        group by c.hacker_id
        having count(*) = oc.c_count
    )
)
order by oc.c_count desc, oc.hacker_id asc;
