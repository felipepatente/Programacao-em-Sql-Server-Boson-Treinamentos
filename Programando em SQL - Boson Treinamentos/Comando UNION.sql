USE db_Biblioteca

SELECT ID_Autor FROM tbl_autores
-- O comando UNION faz a união de dois ou mais SELECT.
-- Dessa forma que esta faz a seleção de todos os dados até os repetidos 
UNION All
SELECT ID_Autor FROM tbl_Livro


SELECT ID_Autor FROM tbl_autores
-- Dessa forma os resultado não vão ser repetidos
UNION
SELECT ID_Autor FROM tbl_Livro
