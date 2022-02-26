select C.hacker_id, H.name, count(C.hacker_id) as counter
from Hackers H
    join Challenges C on H.hacker_id = C.hacker_id
group by H.hacker_id, H.name
having counter = (
    select max(subq.cnt)
    from (
        select count(hacker_id) as cnt
        from Challenges
        group by hacker_id
        order by hacker_id
    ) subq
) or counter in (
    select subq1.cnt
    from (
        select count(*) as cnt
        from Challenges
        group by hacker_id
    ) subq1
    group by subq1.cnt
    having count(subq1.cnt) = 1)
order by counter desc, C.hacker_id;