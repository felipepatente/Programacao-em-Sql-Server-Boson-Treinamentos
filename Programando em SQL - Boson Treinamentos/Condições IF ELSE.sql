-- 1° Comando
DECLARE  @numero INT,
		 @texto VARCHAR(10)

SET @numero = 20
SET @texto = 'Fábio'

IF @numero = 20
	SELECT 'Número correto'

if @texto = 'Fábio'
	BEGIN
		SET @numero = 30
		SELECT @numero
	END;
ELSE
	BEGIN
		SET @numero = 40
		SELECT 'Número incorreto'
	END;
	
-- 2° Comando
DECLARE @NOME VARCHAR (30),
		@MEDIA REAL,
		@RESULTADO VARCHAR (10)
SELECT
	@NOME = nome_aluno,
	@MEDIA = (tbl_alunos.nota1 + tbl_alunos.nota2 + tbl_alunos.nota3) / 3.00
FROM tbl_alunos
WHERE nome_aluno = 'Fábio'
	IF @MEDIA >= 7.00
		BEGIN
			SELECT @RESULTADO = 'Aprovado';
		END;
	ELSE
		BEGIN
			SELECT @RESULTADO = 'Reprovado';
		END;

	SELECT ' O aluno ' + @NOME + ' está ' + @RESULTADO +
		' com media ' + CAST(@MEDIA AS VARCHAR);