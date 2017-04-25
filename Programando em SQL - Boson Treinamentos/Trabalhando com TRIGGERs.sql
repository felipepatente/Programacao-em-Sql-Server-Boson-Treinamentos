--Criação de um trigger do tipo AFTER
CREATE TRIGGER teste_trigger_after
ON tbl_editoras
AFTER INSERT
AS
PRINT 'Olá Mundo';

--Para disparar esse trigger é necessario a seguinte linha de comando
INSERT INTO tbl_editoras VALUES ('Editora10') --Fazendo isso vai imprimir a linha "Olá Mundo"

--Excluindo esse trigger
DROP TRIGGER teste_trigger_after

--Criação de uma trigger do tipo AFTER
CREATE TRIGGER trigger_after
ON tbl_editoras
AFTER INSERT
AS
INSERT INTO tbl_autores VALUES (25,'da Silva')
INSERT INTO tbl_Livro VALUES ('Livro1','123456000','20001010',77,25,2)

--Criação de um trigger do tipo INSTEAD OF
CREATE TRIGGER teste_trigger_insteadof
ON tbl_autores
INSTEAD OF INSERT
AS
PRINT 'Olá de novo! Não inseri o registro desta vez';

--Para disparar esse trigger é necessario a seguinte linha de comando
INSERT INTO tbl_autores VALUES (12,'Patente')--Fazendo isso vai imprimir a linha "Olá de novo! Não inseri o registro desta vez"

--Desabilitando um trigger
ALTER TABLE tbl_editoras
DISABLE TRIGGER trigger_affter

--Verificar a existencia de triggers em determinada tabela do banco
EXEC sp_helptrigger @tabname = tbl_editoras

--Para verificar triggers no banco de dados
USE db_Biblioteca
SELECT *
FROM sys.triggers
WHERE is_disabled = 0 -- 0 (zero) para verificar se esta desabilitado ou 1 (um) para habilitado
