SELECT J.FLAVOR
FROM FIRST_HALF F
    INNER JOIN (SELECT FLAVOR, SUM(TOTAL_ORDER) AS JULY_TOTAL_ORDER
                FROM JULY
                GROUP BY FLAVOR) J
        ON F.FLAVOR = J.FLAVOR
ORDER BY TOTAL_ORDER + JULY_TOTAL_ORDER DESC
LIMIT 3;