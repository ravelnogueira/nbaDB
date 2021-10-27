/*1° Maiores arenas*/
SELECT NICKNAME as Nome, ARENACAPACITY as Capacidade_da_Arena
FROM teams
ORDER BY Capacidade_da_Arena DESC
limit 10

/* 2° Estados com maiores times */
 SELECT state, count(state) 
FROM teams
GROUP BY state ORDER BY count(state) 

/*3° Anos que foram fundados mais times*/
SELECT YEARFOUNDED, count(YEARFOUNDED) as Quantidade_de_Times
FROM teams
GROUP BY YEARFOUNDED ORDER BY count(YEARFOUNDED) DESC
limit 10
