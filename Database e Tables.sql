CREATE DATABASE gerenciamento_funcionarios;

USE gerenciamento_funcionarios;

CREATE TABLE Departamentos (
  DepartamentoID INT PRIMARY KEY,
  Nome VARCHAR(100)
);

CREATE TABLE Funcionarios (
  FuncionarioID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Cargo VARCHAR(100),
  DataContratacao DATE,
  DepartamentoID INT,
  FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

CREATE TABLE Salarios (
  SalarioID INT PRIMARY KEY,
  FuncionarioID INT,
  Salario DECIMAL(10, 2),
  DataInicio DATE,
  DataFim DATE,
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

CREATE TABLE Enderecos (
  EnderecoID INT PRIMARY KEY,
  FuncionarioID INT,
  Rua VARCHAR(100),
  Numero VARCHAR(10),
  Cidade VARCHAR(100),
  Estado VARCHAR(100),
  CEP VARCHAR(10),
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

CREATE TABLE Contatos (
  ContatoID INT PRIMARY KEY,
  FuncionarioID INT,
  Tipo VARCHAR(50),
  Valor VARCHAR(100),
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

CREATE TABLE Dependentes (
  DependenteID INT PRIMARY KEY,
  FuncionarioID INT,
  Nome VARCHAR(100),
  DataNascimento DATE,
  Parentesco VARCHAR(100),
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);

CREATE TABLE HistoricoCargos (
  HistoricoID INT PRIMARY KEY,
  FuncionarioID INT,
  Cargo VARCHAR(100),
  DataInicio DATE,
  DataFim DATE,
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(FuncionarioID)
);