SELECT
    session_player_id,
    score,
    accuracy,
    words_per_minute,
    created_at
FROM
    {{ ref('stg_session') }}
ORDER BY
    score DESC
LIMIT 10