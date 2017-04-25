USE db_Loja
SELECT Resultado.Cliente, SUM(Resultado.Total) AS Total
FROM
(SELECT CL.Nome_Cliente AS Cliente, PR.Preco_Produto  * CO.Quantidade
FROM Clientes AS CL
INNER JOIN Compras AS CO
ON CL.ID_Cliente = CO.ID_Cliente
INNER JOIN Produto AS PR
ON CO.ID_Produto = PR.ID_Produto) AS Resultado
GROUP BY Resultado.Cliente
ORDER BY Total
