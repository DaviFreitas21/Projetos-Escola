CREATE DATABASE bdBiblioteca
GO
USE bdBiblioteca

CREATE TABLE tbGenero
(
	idGenero INT PRIMARY KEY IDENTITY (1,1)
	,nomeGenero VARCHAR (50)
	,descricaoGenero VARCHAR (100)
)

CREATE TABLE tbLivro
(
	idLivro INT PRIMARY KEY IDENTITY (1,1)
	,tituloLivro VARCHAR (50)
	,autorLivro VARCHAR (70)
	,anoPublicacaoLivro CHAR (4)
	,isbnLivro CHAR (13)
)

CREATE TABLE tbLeitor
(
	idLeitor INT PRIMARY KEY IDENTITY (1,1)
	,nomeLeitor VARCHAR (50)
	,logradouroLeitor VARCHAR (50)
	,numLograLeitor VARCHAR (6)
	,cepLeitor CHAR (8)
	,bairroLeitor VARCHAR (50)
	,cidadeLeitor VARCHAR (50)
	,estadoLeitor VARCHAR (50)
	,ufLeitor CHAR (2)
	,paisLeitor VARCHAR (30)
	,idLivro INT FOREIGN KEY REFERENCES tbLivro(idLivro)
)

CREATE TABLE tbFoneLeitor
(
	idFoneLeitor INT PRIMARY KEY IDENTITY (1,1)
	,numeroFoneLeitor CHAR (13)
	,idLeitor INT FOREIGN KEY REFERENCES tbLeitor(idLeitor)
)

CREATE TABLE generoLivro
(
	idGeneroLivro INT PRIMARY KEY IDENTITY (1,1)
	,idLivro INT FOREIGN KEY REFERENCES tbLivro(idLivro)
	,idGenero INT FOREIGN KEY REFERENCES tbGenero(idGenero)
)

CREATE TABLE tbEmprestimo
(
	idEmprestimo INT PRIMARY KEY IDENTITY (1,1)
	,dataEmprestimo DATE 
	,dataDevolucaoPrevistaEmprestimo DATE
	,dataDevolucaoRealEmprestimo DATE 
	,idLeitor INT FOREIGN KEY REFERENCES tbLeitor(idLeitor)
	,idLivro INT FOREIGN KEY REFERENCES tbLivro(idLivro)
)