DECLARE 
--Declarando variaveis
@valor INT,
@texto VARCHAR(40),
@data_nasc DATE,
@nada MONEY

--Atribuindo valores
SET @valor = 50
SET @texto = 'Bóson'
SET @data_nasc = GETDATE()

--Exibir os valores das variaveis
SELECT @valor AS Valor, @texto AS Texto,
@data_nasc AS 'Data de Nascimento',
@nada AS Salário