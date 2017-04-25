USE db_Biblioteca

--Pegando a tabela esquerda "A" toda
SELECT * FROM tbl_Livro
LEFT JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

--Só pega a parte esquerda da tabela "A", sem a parte que faz intersecção com a tabela "B"
SELECT * FROM tbl_Livro
LEFT JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_autores.ID_Autor IS NULL

--Pegando a tabela direita "B" toda
SELECT * FROM tbl_autores
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

--Só pega a parte direita da tabela "B", sem a parte que faz intersecção com a tabela "A"
SELECT * FROM tbl_autores
RIGHT JOIN tbl_Livro
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor
WHERE tbl_autores.ID_Autor IS NULL