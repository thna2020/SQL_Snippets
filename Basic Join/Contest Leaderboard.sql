select H.hacker_id, H.name, sum(max_score.maxscore) as total_score
from Hackers H
    join (
        select S.hacker_id,  max(score) as maxscore 
        from Submissions S 
        group by S.challenge_id, S.hacker_id
    ) max_score
    on H.hacker_id = max_score.hacker_id
group by H.hacker_id, H.name
having total_score > 0
order by total_score desc, H.hacker_id asc;