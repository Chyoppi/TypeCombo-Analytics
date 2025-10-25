SELECT
    playerId,
    score,
    accuracy,
    wpm,
    daily,
    createdAt
FROM
    {{ ref('stg_session') }}
WHERE daily = TRUE AND DATE(createdAt) = CURRENT_DATE()
ORDER BY
    score DESC
LIMIT 10