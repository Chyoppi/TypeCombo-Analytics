SELECT
    playerId,
    score,
    accuracy,
    wpm,
    createdAt
FROM
    {{ ref('stg_session') }}
ORDER BY
    score DESC
LIMIT 10