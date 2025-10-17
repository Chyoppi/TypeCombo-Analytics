SELECT
    id as session_id,
    playerId,
    accuracy,
    wpm,
    createdAt,
    score,
    daily
FROM `typecombo-analytics.tc_analytics.Session`