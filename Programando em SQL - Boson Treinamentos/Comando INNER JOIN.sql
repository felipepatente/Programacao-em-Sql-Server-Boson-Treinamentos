USE db_Biblioteca

SELECT * FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor

SELECT L.Nome_Livro, E.Nome_editora
FROM tbl_Livro AS L
INNER JOIN tbl_editoras AS E
ON L.ID_editora = E.ID_Editora

SELECT tbl_Livro.Nome_Livro, tbl_Livro.ISBN, tbl_autores.Sobrenome_Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.ID_Autor = tbl_autores.ID_Autor