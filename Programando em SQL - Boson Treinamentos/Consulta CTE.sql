USE db_Loja
GO

WITH ConsultaCTE (Cliente, Total)
AS (SELECT CL.Nome_Cliente AS Cliente,
PR.Preco_Produto * CO.Quantidade AS Total
FROM Clientes AS CL
INNER JOIN Compras AS CO
ON CL.ID_Cliente = CO.ID_Cliente
INNER JOIN Produtos AS PR
ON CO.ID_Produto = PR.ID_Produto)

SELECT Cliente, SUM(Total) AS ValorTotal
FROM ConsultaCTE
GROUP BY Cliente
ORDER BY ValorTotal