
--Filtering of data by finding who scored over X amount (25 in this case).
select p.player_name, s.points 
from Players p
join Statistics s on p.player_id = s.player_id
where s.points > 25;

--Sorting of data by finding what each team belongs to
select t.team_name, c.conference_name
from Teams t
join Conferences c on t.conference_id = c.conference_id
order by c.conference_name, t.team_name;

--Aggregation and grouping of data by finding the avg points scored in a match and finding the avg height/weight by position
SELECT t.team_name, g.game_id, g.game_date, CEILING(AVG(s.points)) AS avg_points
FROM Teams t
JOIN Players p ON t.team_id = p.team_id
JOIN Statistics s ON p.player_id = s.player_id
JOIN Games g ON g.game_id = s.game_id
GROUP BY t.team_name, g.game_id, g.game_date
ORDER BY t.team_name, g.game_date;


SELECT p.player_name, p.position, averages.avg_height, averages.avg_weight
FROM Players p
JOIN (
  SELECT position, AVG(height) AS avg_height, AVG(weight) AS avg_weight
  FROM Players
  GROUP BY position
) AS averages ON p.position = averages.position
ORDER BY p.position, p.player_name;


--Joining of data by connecting multiple tables of team info into one row
select p.player_name, t.team_name, t.city, a.arena_name, c.coach_name
from Players p
join Teams t on p.team_id = t.team_id
join Arenas a on t.team_id = a.team_id
join Coaches c on t.team_id = c.team_id;




