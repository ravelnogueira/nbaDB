USE t8grupo8;

SELECT 
    *
FROM
    games_details AS g
        INNER JOIN
    teams AS t
        INNER JOIN
    players AS p
WHERE
    g.TEAM_ID = t.TEAM_ID
        AND t.TEAM_ID = p.TEAM_ID
        AND t.CITY LIKE 'Houston%';
    
-- Qual time ganhou mais partidas 2019?
SELECT DISTINCT
    team, SUM(HOME_WIN) AS Vitorias
FROM
    rankings
WHERE
    season_id = '22019'
GROUP BY team
ORDER BY Vitorias DESC;

-- Qual time teve mais vitorias em casa e fora de casa.
SELECT 
    season_id, team, HOME_WIN, ROAD_WIN
FROM
    rankings
WHERE
    season_id = '22017'
ORDER BY home_win DESC , road_win DESC