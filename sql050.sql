'https://www.hackerrank.com/challenges/full-score/problem'

SELECT H.hacker_id,H.name
FROM hackers H
INNER JOIN submissions s
ON h.hacker_id = s.hacker_id
INNER JOIN challenges c
ON s.challenge_id = c.challenge_id
INNER JOIN difficulty d
ON c.difficulty_level = d.difficulty_level
where s.score = d.score  AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id,h.name
HAVING count(s.hacker_id)>1
ORDER BY count(s.hacker_id) DESC ,s.Hacker_id ASC;

