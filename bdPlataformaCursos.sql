CREATE DATABASE bdPlataformaCursos
GO
USE bdPlataformaCursos

CREATE TABLE tbAluno
(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50)
	,emailAluno VARCHAR (50)
	,dataNascAluno DATE
)

CREATE TABLE tbProfessor
(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (50)
	,especialidadeProfessor VARCHAR (50)
	,emailProfessor VARCHAR (50)
)

CREATE TABLE tbCurso 
(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (50)
	,descricaoCurso VARCHAR (100)
	,cargaHorariaCurso TIME
)

CREATE TABLE tbStatusMatricula
(
	idStatusMatricula INT PRIMARY KEY IDENTITY (1,1)
	,descStatusMatricula VARCHAR (50)
)

CREATE TABLE tbMatricula
(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATE
	,idStatusMatricula INT FOREIGN KEY REFERENCES tbStatusMatricula(idStatusMatricula)
)

CREATE TABLE tbAlunoMatricula
(
	idAlunoMatricula INT PRIMARY KEY IDENTITY (1,1)
	,idMatricula INT FOREIGN KEY REFERENCES tbMatricula(idMatricula)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
)

CREATE TABLE tbCursoProfessor
(
	idCursoProfessor INT PRIMARY KEY IDENTITY (1,1)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
)