USE db_Biblioteca

SELECT 'O preço do livro ' + Nome_Livro + ' é de R$' + 
CAST(Peco_Livro AS VARCHAR(6)) AS Item
FROM tbl_livro

--Faz a mesma coisa com o de cima só que com "CONVERT"
SELECT 'O preço do livro ' + Nome_Livro + ' é de R$ ' + 
CONVERT (VARCHAR(6), Peco_Livro)
FROM tbl_Livro

--Conversão com datas
SELECT 'A data de publicação ' + 
CONVERT (VARCHAR(18), Data_Pub, 103)
FROM tbl_Livro