-- 5 jogadores mais suspensos entre 2017 e 2019
SELECT gd.player_name as jogador, t.nickname,
CASE WHEN gd.not_played LIKE '%sus%'
THEN 'SUSPENSO'
END as razao, count(*) as quantidade 
FROM games_details as gd 
INNER JOIN teams as t ON gd.team_id  = t.team_id
WHERE gd.not_played LIKE '%sus%'
GROUP BY jogador, t.nickname, razao
ORDER BY quantidade DESC, jogador LIMIT 5;

-- Motivos pelos quais jogadores foram afastados de partidas
SELECT 
    not_played AS motivo, COUNT(not_played) AS quantidade
FROM
    games_details
GROUP BY not_played
ORDER BY quantidade DESC
LIMIT 1 , 5;