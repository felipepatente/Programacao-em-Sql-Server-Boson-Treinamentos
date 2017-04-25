USE db_Biblioteca
SELECT Nome_Livro, ISBN
--Cria uma nova tabela, com as colunas Nome_Livro e ISBN, que são pegos da tabela tbl_Livro
INTO Livro_ISBN
FROM tbl_Livro
WHERE ID_Livro > 2