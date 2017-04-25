USE db_Biblioteca
--Conta a quantidade de dados na tabela autores. Se quiser pode colocar o nome da coluna no lugar do ateristico
SELECT COUNT (*) FROM tbl_autores

--Traz o valor maximo da coluna Peco_Livro da tabela tbl_Livro
SELECT MAX (Peco_Livro) FROM tbl_Livro

--Traz o valor minimio da coluna Peco_Livro da tabela tbl_Livro
SELECT MIN (Peco_Livro) FROM tbl_Livro

--Traz a média aritmética da coluna Peco_Livro da tabela tbl_Livro
SELECT AVG (Peco_Livro) FROM tbl_Livro

--Traz a soma da coluna Peco_Livro da tabela tbl_Livro
SELECT SUM (Peco_Livro) FROM tbl_Livro