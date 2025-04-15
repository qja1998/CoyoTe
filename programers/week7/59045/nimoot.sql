SELECT INS.ANIMAL_ID, INS.ANIMAL_TYPE, INS.NAME
FROM ANIMAL_INS AS INS
JOIN ANIMAL_OUTS AS OUTS ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.SEX_UPON_INTAKE LIKE 'Intact%' AND
    NOT(OUTS.SEX_UPON_OUTCOME LIKE 'Intact%')