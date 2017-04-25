USE db_Biblioteca

--Concatenação de Strings
--É possível concactenar strings usando-se o operador de concatenação +
--Sintaxe:
--string1 + string2 ou coluna + coluna ou coluna e string

--Concactena duas strings
SELECT 'Fábio ' + 'da Bóson Treinamentos' AS Bóson

--Concactena duas colunas
SELECT Nome_autor + ' ' + Sobrenome-autor AS 'Nome Completo' FROM tbl_autores 

--Concactena uma string e uma coluna
SELECT 'Eu gosto do livro ' + Nome_Livro AS 'Meu Livro' FROM tbl_Livro
WHERE ID_Autor = 2