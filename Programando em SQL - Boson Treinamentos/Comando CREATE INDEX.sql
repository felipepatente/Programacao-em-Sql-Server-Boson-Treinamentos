USE db_Biblioteca

--Faz com que o campo "Nome_Livro" da tabela "tbl_Livro" seja indexada para deixar a consulta mais rapida
CREATE INDEX indice_nome_livro
ON tbl_Livro(Nome_Livro)