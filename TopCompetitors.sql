-- https://www.hackerrank.com/challenges/full-score/problem

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select hacker_id, name from (
    select h.hacker_id, h.name, count(*) 
    from Hackers h, Submissions s, Difficulty d, Challenges c where 
    h.hacker_id = s.hacker_id
    and c.challenge_id = s.challenge_id
    and s.score = d.score and c.difficulty_level = d.difficulty_level
    group by h.hacker_id, h.name
    having count(*) > 1
    order by 3 desc, 1 asc
);

