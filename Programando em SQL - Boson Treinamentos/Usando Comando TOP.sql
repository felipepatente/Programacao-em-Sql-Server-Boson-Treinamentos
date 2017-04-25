USE db_Biblioteca

--Seleciona os 10 primeiro nomes de livro da tabela Livro
SELECT TOP 10 Nome_Livro
FROM tbl_Livro

--Seleciona 10% dos nomes do livro da tabela Livro
SELECT TOP 10 PERCENT Nome_Livro
FROM tbl_Livro