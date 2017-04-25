--Cria a regra 
CREATE RULE rl_preco AS @VALOR > 10.00
--Faz a ligação da regra com a tabela "tbl_Livro" e a coluna "Preco_Livro". Essa coluna só aceita valores acima de 10
EXECUTE SP_BINDRULE rl_preco, 'tbl_Livro.Preco_Livro'

--Para fazer atualização em uma tabela
UPDATE tbl_Livro -- Seleciona a tabela
SET Peco_Livro = 50.00 -- Seleciona a coluna
WHERE ID_Livro = 105 -- Coloca uma condição para estar atualizando