SELECT
    session_player_id,
    score,
    accuracy,
    wpm,
    created_at
FROM
    {{ ref('stg_session') }}
ORDER BY
    score DESC
LIMIT 10