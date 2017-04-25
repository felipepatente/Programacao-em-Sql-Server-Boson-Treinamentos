USE db_Biblioteca
--Esse comando altera uma tabela, nesse caso é a tabela tbl_Livro
ALTER TABLE tbl_Livro

--Exclui uma coluna
DROP COLUMN ID_Autor


ALTER TABLE tbl_Livro
--Adiciona uma coluna "ID_Autor" na tabela tbl_Livro
ADD ID_Autor SMALLINT NOT NULL
--Determina como chave estrangeira a coluna "ID_Autor"
CONSTRAINT fk_ID_Autor FOREIGN KEY (ID_Autor)
--E que esta fazendo refença a tabela tbl_autores
REFERENCES tbl_autores