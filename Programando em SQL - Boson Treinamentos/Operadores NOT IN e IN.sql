USE db_Biblioteca

SELECT * FROM tbl_Livro
--Traz valores entre 1 ou 2
WHERE ID_Autor IN (1,2)

SELECT * FROM tbl_Livro
--Traz valores aonde os valores seja diferente de 1 e 2
WHERE ID_Autor NOT IN (1,2)