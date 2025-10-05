# Write your MySQL query statement below
SELECT a1.player_id, a1.event_date first_login
FROM Activity a1
WHERE event_date = (SELECT MIN(event_date) FROM Activity a2 WHERE a2.player_id = a1.player_id)
