--Criando uma função
CREATE FUNCTION nota_media(@nome VARCHAR(30))
RETURNS REAL
AS
	BEGIN
	DECLARE @media REAL
	SELECT @media = (nota1 + nota2 + nota3 nota4 * 2) / 5.00
	FROM tbl_alunos
	WHERE nome_aluno = @nome
	RETURN @media
END

--Usando essa função
SELECT dbo.nota_media('Felipe')
-- ///////////////////////////////////////////

--Criando uma função do tipo de valor de tabela embutida
CREATE FUNCTION retorna_itens (@valor REAL)
RETURNS Table
AS
RETURN(
	SELECT L.Nome_Livro, A.Sobrenome_Autor, E.Nome_Editora
	FROM tbl_Livro AS L
	INNER JOIN tbl_autores AS A
	ON L.ID_Autor = A.ID_Autor
	INNER JOIN tbl_editoras AS E
	ON L.ID_editora = E.ID_Editora
	WHERE L.Peco_Livro > @valor)
	
--Execuntando essa função
SELECT Nome_Livro, Sobrenome_Autor
FROM retorna_itens(40.00)
-- ///////////////////////////////////////////

--Função de tabela com varias instruções
CREATE FUNCTION multi_tabela()
RETURNS @valores TABLE
	(Nome_Livro VARCHAR(50),
	Data_Pub DATETIME, Nome_Editora VARCHAR(50),
	Peco_Livro MONEY)
AS
BEGIN
INSERT @valores(Nome_Livro, Data_Pub, Nome_Editora, Peco_Livro)
	SELECT L.Nome_Livro, L.Data_Pub, E.Nome_Editora, L.Peco_Livro
	FROM tbl_Livro AS L
	INNER JOIN tbl_editoras AS E
	ON L.ID_editora = E.ID_Editora
RETURN
END

--Usando essa função
SELECT *
FROM multi_tabela()
