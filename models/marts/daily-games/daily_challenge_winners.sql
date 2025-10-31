-- Every dailychallenges #1 player, harder one to develope but good practice B)

WITH daily_sessions AS (
    SELECT
        session_id,
        player_id,
        accuracy,
        words_per_minute,
        score,
        DATE(created_at) AS challenge_date
    FROM {{ref('stg_session')}}
    WHERE daily = true
),

ranked_players AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY challenge_date ORDER BY score DESC) AS rank
    FROM daily_sessions
),

daily_winners AS (
    SELECT
        challenge_date,
        session_id,
        player_id,
        accuracy,
        words_per_minute,
        score
    FROM ranked_players
    WHERE rank = 1
)

SELECT
    daily_winners.*,
    players.username
FROM daily_winners
LEFT JOIN {{ref('stg_players')}} AS players
    ON daily_winners.player_id = players.player_id
ORDER BY challenge_date DESC