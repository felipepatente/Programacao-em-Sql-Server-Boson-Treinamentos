--Cláusula WITH TIES

--Traz os primeiros intens da seleção
SELECT TOP(3) WITH TIES NOME_TIME, Pontos
FROM tbl_times
ORDER BY Pontos DESC