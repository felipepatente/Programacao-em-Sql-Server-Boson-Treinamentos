-- 1° Exemplo
CREATE PROCEDURE teste
AS
SELECT 'Boson Treinamentos' AS Nome

-- 2° Exemplo
CREATE PROCEDURE p_LivroValor
AS
SELECT Nome_Livro, Preco_Livro
FROM tbl_Livro