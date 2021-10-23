USE t8grupo8;
CREATE TABLE games_details(
    DETAILS_ID        INTEGER  NOT NULL,
    RANKING_ID        INTEGER,
    GAME_ID           INTEGER  NOT NULL,
    TEAM_ID           INTEGER  NOT NULL,
    TEAM_ABBREVIATION VARCHAR(3) NOT NULL,
    PLAYER_ID         INTEGER  NOT NULL,
    PLAYER_NAME       VARCHAR(24) NOT NULL,
    NOT_PLAYED        VARCHAR(44),
    PRIMARY KEY(details_id),
    FOREIGN KEY(team_id) REFERENCES teams(team_id),
    FOREIGN KEY(ranking_id) REFERENCES rankings(ranking_id)
);