USE db_Escola
-- Criando a função
CREATE FUNCTION nota_media(@nome VARCHAR(30))
RETURNS REAL
AS
BEGIN
DECLARE @media REAL
SELECT @media = (nota1 + nota2 + nota3 + nota4 * 2) / 5.00
FROM tbl_alunos
WHERE nome_aluno = @nome
RETURN @media
END

--Usando a função
SELECT dbo.nota_media('Fabio')