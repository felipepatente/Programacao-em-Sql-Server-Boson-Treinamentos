--Criando a procedure
CREATE PROCEDURE teste
AS
SELECT 'Boson Treinamentos' AS Nome

--Executando a procedure
EXEC teste
-- ////////////////////////////////////////

--Alterando uma procedure e colocando parametros
ALTER PROCEDURE teste (@par1 AS INT)
AS
SELECT @par1

--Executando a procedure com parametros
EXEC teste 25
-- /////////////////////////////////////////

--Alterando uma procedure e colocando parametros
ALTER PROCEDURE p_LivroValor (@ID SMALLINT)
AS
SELECT Nome_Livro AS Livro, Peco_Livro AS Preço
FROM tbl_Livro
WHERE ID_Livro = @ID

--Executando a procedure com parametros
EXEC p_LivroValor 104
-- ////////////////////////////////////////////////

CREATE PROCEDURE p_LivroValor
AS
SELECT Nome_Livro, Peco_Livro
FROM tbl_Livro

EXEC p_LivroValor
-- ///////////////////////////////////////

--Esse comando vizualiza como foi feito a stored procedure p_LivroValor é o nome da procedure
EXEC sp_helptext p_LivroValor
-- ///////////////////////////////////////

--Inserindo valores em uma tabela através de procedure
ALTER PROCEDURE inserirValor (@ID VARCHAR, @SOBRENOME VARCHAR(50))
AS
INSERT INTO tbl_autores VALUES (@ID, @SOBRENOME)

--Executando essa procedure
EXEC inserirValor 6, Santos
EXEC inserirValor 7, Silva
-- ////////////////////////////////////////

--Criando uma procedure com multiplos parametros
ALTER PROCEDURE teste (@par1 AS INT, @par2 AS varchar(20))
AS
BEGIN
SELECT @par1
SELECT @par2
END

--Executando essa procedure
EXEC teste 22, 'Laranja' --Adicionando por posição
EXEC teste @par1 = 25, @par2 = 'Abacate' -- Adicionando por nome
-- /////////////////////////////////////////

--Criando uma procedure com multiplos parametros
ALTER PROCEDURE p_LivroValor (@ID SMALLINT, @Preco MONEY)
AS
SELECT Nome_Livro AS Livro, Peco_Livro AS Preço
FROM tbl_Livro
WHERE ID_Livro > @ID AND Peco_Livro > @Preco

--Executando essa procedure
EXEC p_LivroValor @ID = 103, @Preco = 60
-- /////////////////////////////////////

--Outro exemplo com multiplos parametros
ALTER PROCEDURE p_LivroValor(@Quantidade SMALLINT, @ID SMALLINT)
AS
SELECT Nome_Livro AS Livro, Peco_Livro * @Quantidade * @Quantidade AS Preço
FROM tbl_Livro
WHERE ID_Livro = @ID

----Executando essa procedure
EXEC p_LivroValor @ID = 103, @Quantidade = 10
-- ///////////////////////////////////////////

-- Criando uma procedure para inserir dados na tabela
CREATE PROCEDURE p_insere_editora (@nome VARCHAR(50))
AS
INSERT INTO tbl_editoras(Nome_Editora)
VALUES (@nome)

--Executando essa procedure
EXEC p_insere_editora @nome = 'Editora1'
-- /////////////////////////////////////

--Criando uma procedure com valor padrão
CREATE PROCEDURE p_teste_valor_padrao(@param1 INT, @param2 VARCHAR(20) = 'Valor Padão!')
AS
SELECT 'Valor do parâmetro 1: ' + CAST(@param1 AS VARCHAR)
SELECT 'Valor do parâmetro 2: ' + @param2

----Executando essa procedure
EXEC p_teste_valor_padrao 30
EXEC p_teste_valor_padrao @param1 = 40, @param2 = 'Valor Modificado'
-- //////////////////////////////////////////////////

--Criando um parametro de saída
ALTER PROCEDURE teste (@par1 AS INT OUTPUT)
AS
SELECT @par1 * 2
RETURN

--Executando essa procedure
DECLARE @valor AS INT = 15
EXEC teste @valor OUTPUT
PRINT @valor
-- ////////////////////////////////////

--Criando um stored procedure no mySQL workbench
CREATE PROCEDURE Inserir(ID INT, Nome VARCHAR(50))
INSERT INTO tbl_departamento VALUES (ID, Nome);

--Executando uma stored procedure no mySQL workbench
CALL Inserir (1, 'Administração');
