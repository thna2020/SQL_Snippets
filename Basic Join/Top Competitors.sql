select H.hacker_id, H.name
from Submissions S
    join Challenges C on C.challenge_id = S.challenge_id
    join Difficulty D on D.difficulty_level = C.difficulty_level
    join Hackers H on H.hacker_id = S.hacker_id
where D.score = S.score
group by H.hacker_id, H.name
having count(S.hacker_id) > 1
order by count(S.hacker_id) desc, S.hacker_id asc;