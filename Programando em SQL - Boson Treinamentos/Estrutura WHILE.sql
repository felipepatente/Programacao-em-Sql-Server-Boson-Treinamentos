-- 1° exemplo
DECLARE @valor INT
SET @valor = 0

WHILE @valor < 10
	BEGIN
		PRINT 'Número: ' + CAST(@valor AS VARCHAR(2))
		SET @valor = @valor + 1
	END;
	
-- 2° exemplo
DECLARE @codigo INT
SET @codigo = 100

WHILE @codigo < 106
	BEGIN
		SELECT ID_Livro AS ID, Nome_Livro AS Livro,
		Peco_Livro AS Preço
		FROM tbl_livro
		WHERE ID_Livro = @codigo
		SET @codigo = @codigo + 1
	END;