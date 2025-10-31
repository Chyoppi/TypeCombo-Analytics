SELECT
    id AS session_id,
    playerId AS session_player_id,
    accuracy,
    wpm,
    createdAt,
    score,
    daily
FROM `typecombo-analytics.tc_analytics.Session`