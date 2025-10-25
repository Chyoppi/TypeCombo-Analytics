-- Every dailychallenges #1 player, harder one to develope but good practice B)

with daily_sessions as (
    select
        session_id,
        playerId,
        accuracy,
        wpm,
        score,
        DATE(createdAt) as challenge_date
    from {{ref('stg_session')}}
    where daily = true
),

ranked_players as (
    select
        *,
        ROW_NUMBER() OVER (PARTITION BY challenge_date ORDER BY score DESC) as rank
    from daily_sessions
),

daily_winners as (
    select
        challenge_date,
        session_id,
        playerId,
        accuracy,
        wpm,
        score
    from ranked_players
    where rank = 1
)

select
    dw.*,
    p.username
from daily_winners dw
left join {{ref('stg_players')}} p
    on dw.playerId = p.player_id
order by challenge_date desc