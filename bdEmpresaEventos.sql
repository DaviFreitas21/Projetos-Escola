CREATE DATABASE bdEmpresaEventos
GO
USE bdEmpresaEventos

CREATE TABLE tbEvento
(
	idEvento INT PRIMARY KEY IDENTITY (1,1)
	,nomeEvento VARCHAR (50)
	,dataEvento DATE 
	,localEvento VARCHAR (50)
	,orcamentoEvento VARCHAR (10)
)

CREATE TABLE tbServico
(
	idServico INT PRIMARY KEY IDENTITY (1,1)
	,nomeServico VARCHAR (50)
	,descServico VARCHAR (100)
	,custoUnitarioServico VARCHAR (10)
)

CREATE TABLE tbContatoFornecedor
(
	idContatoFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,tipoContatoFornecedor VARCHAR (50)
	,descContatoFornecedor VARCHAR (50)
)

CREATE TABLE tbFoneCliente
(
	idFoneCliente INT PRIMARY KEY IDENTITY (1,1)
	,numeroFoneCliente CHAR (13)
)

CREATE TABLE tbEmailCliente
(
	idEmailCliente INT PRIMARY KEY IDENTITY (1,1)
	,descEmailCliente VARCHAR (50)
)

CREATE TABLE tbCliente
(
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (50)
	,logradouroCliente VARCHAR (50)
	,numLograCliente VARCHAR (6)
	,cepCliente CHAR (8)
	,bairroCliente VARCHAR (50)
	,cidadeCliente VARCHAR (50)
	,ufCliente CHAR (2)
	,complementoCliente VARCHAR (50)
	,idFoneCliente INT FOREIGN KEY REFERENCES tbFoneCliente(idFoneCliente)
	,idEmailCliente INT FOREIGN KEY REFERENCES tbEmailCliente(idEmailCliente)
	,idEvento INT FOREIGN KEY REFERENCES tbEvento(idEvento)
)

CREATE TABLE tbContratoServico
(
	idContratoServico INT PRIMARY KEY IDENTITY (1,1)
	,quantidadeServico VARCHAR (3)
	,valorTotalContratoSevico VARCHAR (10)
	,idEvento INT FOREIGN KEY REFERENCES tbEvento(idEvento)
	,idServico INT FOREIGN KEY REFERENCES tbServico(idServico)
)

CREATE TABLE tbFornecedor
(
	idFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (50)
	,cnpjFornecedor CHAR (14)
	,idContatoFornecedor INT FOREIGN KEY REFERENCES tbContatoFornecedor(idContatoFornecedor)
	,idServico INT FOREIGN KEY REFERENCES tbServico(idServico)
)

CREATE TABLE tbFornecedorServico
(
	idFornecedorServico INT PRIMARY KEY IDENTITY (1,1)
	,idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(idFornecedor)
	,idServico INT FOREIGN KEY REFERENCES tbServico(idServico)
)

CREATE TABLE tbClienteEvento
(
	idClienteEvento INT PRIMARY KEY IDENTITY (1,1)
	,idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
	,idEvento INT FOREIGN KEY REFERENCES tbEvento(idEvento)
)