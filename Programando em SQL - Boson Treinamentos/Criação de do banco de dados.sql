--Cria o banco de dados
CREATE DATABASE db_Biblioteca
ON PRIMARY(
--Da o nome do banco de dados
NAME = db_Biblioteca,
--Especifica o local do banco
FILENAME = 'C:\SQL\db_Biblioteca.MDF',
--Tamanho inicial do banco
SIZE = 6MB,
--Tamnho maximo que o banco suporta
MAXSIZE = 15MB,
--O banco cresce de 10% até chegar no tamanho maximo
FILEGROWTH = 10%
)