-- This is still unused because I need to study how custom tests work

{% test is_value_positive(model, column_name)%}

WITH validated_value AS (
    SELECT
    {{ column_name }} AS positive_value
    FROM {{model}}
),

validation_error AS (
    SELECT
        positive_value
    FROM validated_value
    WHERE (positive_value < 0)
)

SELECT *
FROM validation_error

{% endtest %}