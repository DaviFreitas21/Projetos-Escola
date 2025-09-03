CREATE DATABASE bdRedeHospitais
GO
USE bdRedeHospitais

CREATE TABLE tbMedicamento
(
	idMedicamento INT PRIMARY KEY IDENTITY (1,1)
	,nomeMedicamento VARCHAR (50)
	,dosagemMedicamento VARCHAR (3)
	,formaApresentacaoMedicamento VARCHAR (50)
)

CREATE TABLE tbIngrediente
(
	idIngrediente INT PRIMARY KEY IDENTITY (1,1)
	,descIngrediente VARCHAR (50)
)

CREATE TABLE tbEspecialidade
(
	idEspecialidade INT PRIMARY KEY IDENTITY (1,1)
	,descEspecialidade VARCHAR (100)
)

CREATE TABLE tbFoneMedico
(
	idFoneMedico INT PRIMARY KEY IDENTITY (1,1)
	,numeroFoneMedico CHAR (13)
)

CREATE TABLE tbEmailMedico
(
	idEmailMedico INT PRIMARY KEY IDENTITY (1,1)
	,descEmailMedico VARCHAR (50)
)

CREATE TABLE tbFonePaciente
(
	idFonePaciente INT PRIMARY KEY IDENTITY (1,1)
	,numeroFonePaciente CHAR (13)
)

CREATE TABLE tbMedico
(
	idMedico INT PRIMARY KEY IDENTITY (1,1)
	,nomeMedico VARCHAR (50)
	,crmMedico CHAR (8)
	,idFoneMedico INT FOREIGN KEY REFERENCES tbFoneMedico(idFoneMedico)
	,idEmailMedico INT FOREIGN KEY REFERENCES tbEmailMedico(idEmailMedico)
)

CREATE TABLE tbPaciente
(
	idPaciente INT PRIMARY KEY IDENTITY (1,1)
	,nomePaciente VARCHAR (50)
	,cpfPaciente CHAR (11)
	,logradouroPaciente VARCHAR (50)
	,numLograPaciente VARCHAR (6)
	,cepPaciente CHAR (8)
	,bairroPaciente VARCHAR (50)
	,cidadePaciente VARCHAR (50)
	,ufPaciente CHAR (2)
	,complementoPaciente VARCHAR (20)
	,dataNascPaciente DATE
	,idFonePaciente INT FOREIGN KEY REFERENCES tbFonePaciente(idFonePaciente)
)

CREATE TABLE tbConsulta
(
	idConsulta INT PRIMARY KEY IDENTITY (1,1)
	,dataConsulta DATE
	,horaConsulta TIME
	,diagnosticoConsulta VARCHAR (100)
	,observacoesConsulta VARCHAR (100)
	,idMedico INT FOREIGN KEY REFERENCES tbMedico(idMedico)
	,idPaciente INT FOREIGN KEY REFERENCES tbPaciente(idPaciente)
)

CREATE TABLE tbMedicoEspecialidade
(
	idMedicoEspecialidade INT PRIMARY KEY IDENTITY (1,1)
	,idMedico INT FOREIGN KEY REFERENCES tbMedico(idMedico)
)

CREATE TABLE tbConsultaMedicamento
(
	idConsultaMedicamento INT PRIMARY KEY IDENTITY (1,1)
	,idConsulta INT FOREIGN KEY REFERENCES tbConsulta(idConsulta)
	,idMedicamento INT FOREIGN KEY REFERENCES tbMedicamento(idMedicamento)
)

CREATE TABLE tbMedicamentoIngrediente
(
	idMedicamentoIngrediente INT PRIMARY KEY IDENTITY (1,1)
	,idMedicamento INT FOREIGN KEY REFERENCES tbMedicamento(idMedicamento)
	,idIngrediente INT FOREIGN KEY REFERENCES tbIngrediente(idIngrediente)
)