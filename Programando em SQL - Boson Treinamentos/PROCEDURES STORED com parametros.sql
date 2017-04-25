-- 1° Exemplo
ALTER PROCEDURE teste 
(@par1 AS INT)
AS
SELECT @par1

--Para executar o procedimento
EXEC nomeDoProcedimento

-- 2° Exemplo
ALTER PROCEDURE p_LivroValor
(@ID SMALLINT)
AS
SELECT Nome_Livro AS Livro, Peco_Livro AS Preço
FROM tbl_Livro
WHERE ID_Livro = @ID