
DELETE T
FROM
(SELECT *
, DupRank = ROW_NUMBER() OVER (
              PARTITION BY col
              ORDER BY (SELECT NULL))
            )
FROM table
 AS T
WHERE DupRank > 1