USE db_Biblioteca

--Comando que cria uma tabela
CREATE TABLE tbl_Livro
(ID_Livro SMALLINT PRIMARY KEY IDENTITY(100,1),
Nome_Livro VARCHAR (50) NOT NULL,
ISBN VARCHAR(30) NOT NULL UNIQUE,
ID_Autor SMALLINT NOT NULL, 
Data_Pub DATETIME NOT NULL,
Peco_Livro MONEY NOT NULL)


CREATE TABLE tbl_editoras
(ID_Editora SMALLINT PRIMARY KEY IDENTITY,
Nome_Editora VARCHAR(50) NOT NULL
)


CREATE TABLE tbl_autores(
ID_Autor VARCHAR(50),
Sobrenome_Autor VARCHAR(60)
)