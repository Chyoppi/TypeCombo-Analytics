SELECT
    id AS session_id,
    playerId AS player_id,
    accuracy,
    wpm AS words_per_minute,
    createdAt AS created_at,
    score,
    daily
FROM `typecombo-analytics.tc_analytics.Session`