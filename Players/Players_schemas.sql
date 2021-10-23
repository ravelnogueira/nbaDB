CREATE TABLE players(
    ID          INTEGER  NOT NULL,
    PLAYER_ID   INTEGER  NOT NULL,
    PLAYER_NAME VARCHAR(24) NOT NULL,
    TEAM_ID     INTEGER  NOT NULL,
    TEAM        VARCHAR(13) NOT NULL,
    SEASON_ID   INTEGER  NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(team_id) REFERENCES teams(team_id)
);