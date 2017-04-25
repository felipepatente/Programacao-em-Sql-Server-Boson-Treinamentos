USE db_Biblioteca

SELECT * 
FROM tbl_Livro -- Usando o operador "AND"
WHERE ID_Livro > 2 AND ID_Autor < 3

SELECT * 
FROM tbl_Livro -- Usando o operador "OR"
WHERE ID_Livro > 101 OR ID_Autor < 3