SELECT
    session_player_id,
    score,
    accuracy,
    words_per_minute,
    daily,
    created_at
FROM
    {{ ref('stg_session') }}
WHERE daily = TRUE AND DATE(created_at) = CURRENT_DATE()
ORDER BY
    score DESC
LIMIT 10