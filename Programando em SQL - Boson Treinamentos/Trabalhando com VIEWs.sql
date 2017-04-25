-- Criando uma VIEW

CREATE VIEW vw_LivrosAutores
AS 
SELECT tbl_Livro.Nome_Livro AS Livro,
tbl_autores.ID_Autor AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

--Usando a VIEW
SELECT Livro, Autor
FROM vw_LivrosAutores
WHERE Livro LIKE 'S%'

--Alterando a VIEW
ALTER VIEW vw_LivrosAutores
AS
SELECT tbl_Livro.Nome_Livro AS Livro,
tbl_autores.Sobrenome_Autor AS Autor,
Peco_Livro AS Valor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

--Usando essa VIEW
SELECT *
FROM vw_LivrosAutores

--Excluindo uma VIEW
DROP VIEW vw_LivrosAutores