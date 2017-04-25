USE db_Biblioteca

SELECT * FROM tbl_Livro
WHERE Data_Pub BETWEEN '20040517' AND '20100517'


SELECT Nome_Livro AS Livro, Peco_Livro AS Preço
FROM tbl_Livro
--Selecios os valores entre "40.00" e "60.00"
WHERE Peco_Livro BETWEEN 40.00 AND 60.00