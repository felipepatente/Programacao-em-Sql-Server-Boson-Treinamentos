USE db_Biblioteca

--Selecioa as duas tabelas "A" e "B" toda
SELECT Li.Nome_Livro, Li.ID_Autor, Au.Sobrenome_Autor
FROM tbl_Livro AS Li
FULL JOIN tbl_autores AS Au
ON Li.ID_Autor = Au.ID_Autor

--Selecioa as duas tabelas "A" e "B", sem a intersecção
SELECT Li.Nome_Livro, Li.ID_Autor, Au.Sobrenome_Autor
FROM tbl_Livro AS Li
FULL JOIN tbl_autores AS Au
ON Li.ID_Autor = Au.ID_Autor
WHERE Li.ID_Autor IS NULL
OR Au.ID_Autor IS NULL