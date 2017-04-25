USE db_Biblioteca

SELECT Nome_Livro
FROM tbl_Livro
--Pega todos dados da coluna que  termina com a palavra "g"
WHERE Nome_Livro LIKE '%g'
--Pega todos dados da coluna que a segunda letra seja "i"
OR Nome_Livro LIKE '_i'
--Pega todos dados da coluna que começa com a letra "S"
OR Nome_Livro LIKE 'S%'
--Pega todos dados da coluna que não começa com a letra "M"
OR Nome_Livro NOT LIKE 'M%'