--Para ver as opções de agrupamentos diponiveis, você usa essa linha
SELECT * FROM fn_helpcollations()

--Para ver o esquema de colação usado atualmente pelo o servidor
SELECT SERVERPROPERTY('Collaction') 