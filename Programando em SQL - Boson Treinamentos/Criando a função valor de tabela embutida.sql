--Criando a função valor de tabela embutida
CREATE FUNCTION retorna_itens(@valor REAL)
RETURNS Table
AS
RETURN(
	SELECT L.Nome_Livro, A.Nome_Autor, E.Nome_Editora
	FROM tbl_Livro AS L
	INNER JOIN tbl_autores AS A
	ON L.ID_Autor = A.ID_Autor
	INNER JOIN tbl_editoras AS E
	ON L.ID_editora = E.ID_Editora
	WHERE L.Preco_Livro > @valor)


--Para usar
SELECT Nome_livro, Nome_Autor
FROM retorna_itens(62.00)