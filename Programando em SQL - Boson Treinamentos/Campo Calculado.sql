USE test
--Campo calculados
CREATE TABLE Produtos (codProduto smallint,
NomeProduto VARCHAR(20), Preco MONEY,
Quant SMALLINT, Total AS (Preco * Quant)
)