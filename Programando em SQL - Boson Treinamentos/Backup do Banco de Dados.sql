USE test
GO

--Backup do Banco de Dados
BACKUP DATABASE test
--Coloca o local aonde vai ser colocado o backup
TO DISK = 'C:\arquivos\test.bak'
GO