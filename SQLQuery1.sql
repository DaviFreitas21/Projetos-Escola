CREATE DATABASE dbAcougue;

USE dbAcougue

CREATE TABLE tbTipoProduto (
idTipoProduto INT PRIMARY KEY IDENTITY (1,1)
nomeTipoProduto VARCHAR (50),
descTipoProduto VARCHAR (50),
idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
);

CREATE TABLE tbProduto (
idProduto INT PRIMARY KEY IDENTITY
unidadeMedidaProduto VARCHAR (50),
valorProduto VARCHAR (50),
estoqueProduto VARCHAR (50)
);

CREATE TABLE tbProdutoFornecedor (
idProdutoFornecedor INT PRIMARY KEY IDENTITY
idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor),
idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
);

CREATE TABLE tbFornecedor (
idFornecedor INT PRIMARY KEY IDENTITY
nomeFornecedor VARCHAR (50),
cnpjFornecedor VARCHAR (50) 
);

CREATE TABLE tbItemVendas (
idItemVendas INT PRIMARY KEY IDENTITY (1,1),
idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda),
idProduto INT FOREIGN KEY REFERENCES tbProduto (idProduto)
);

CREATE TABLE tbFuncionario(
idFuncionario INT PRIMARY KEY IDENTITY (1,1),
nomeFuncionario VARCHAR (50),
cpfFuncionario VARCHAR (50),
rgFuncionario VARCHAR (50),
logradouroFuncionario VARCHAR (50),
numLograFuncionario VARCHAR (50),
cepFuncionario VARCHAR (50),
bairoFuncionario VARCHAR (50),
cidadeFuncionario VARCHAR (50),
estadoFuncionario VARCHAR (50),
ufFuncionario VARCHAR (50),
complementoFuncionario VARCHAR (50)
);

CREATE TABLE tbVenda(
idVenda INT PRIMARY KEY IDENTITY (1,1),
dataVenda DATE ,
valorTotalVenda VARCHAR (50)
);

CREATE TABLE tbContatoForn (
idContatoForn INT PRIMARY KEY IDENTITY (1,1)
tipoContatoForn VARCHAR (50),
descContatoForn VARCHAR (50),
idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (idFornecedor)
);

CREATE TABLE tbPagVenda (
idPagVenda INT PRIMARY KEY IDENTITY (1,1)
idVenda INT FOREIGN KEY REFERENCES tbVenda (idVenda),
idPagamento INT FOREIGN KEY REFERENCES tbPagamento (idPagamento)
);

CREATE TABLE tbPagamento (
idPagamento INT PRIMARY KEY IDENTITY (1,1)
formaPagamento VARCHAR (50),
valorPagamento VARCHAR (50)
);

CREATE TABLE tbCliente (
idCliente INT PRIMARY KEY IDENTITY (1,1)
nomeCliente VARCHAR (50),
cpfCliente VARCHAR (50)
);

CREATE TABLE tbEmailCliente (
idEmailCliente INT PRIMARY KEY IDENTITY (1,1)
descEmailCliente VARCHAR (50),
idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
);

CREATE TABLE tbEmailFuncionario (
idEmailFuncionario INT PRIMARY KEY IDENTITY (1,1)
descEmailFuncionario VARCHAR (50),
idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
);

CREATE TABLE tbFoneFuncionario (
idFoneFuncionario INT PRIMARY KEY IDENTITY (1,1)
numeroFoneFuncionario VARCHAR (50),
idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
);
CREATE TABLE tbFoneCliente(
idFoneCliente INT PRIMARY KEY IDENTITY (1,1)
numeroFoneCliente VARCHAR (50),
idCliente INT FOREIGN KEY REFERENCES tbCliente (idCliente)
);