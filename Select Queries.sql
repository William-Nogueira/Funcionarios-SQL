#Seleciona todos os funcionários do departamento de tecnologia:
SELECT * FROM Funcionarios WHERE DepartamentoID = 5;

#Seleciona todos os funcionários com salário acima de 5000,00 Reais:
SELECT * FROM Funcionarios WHERE Salario > 5000;

#Seleciona todos os funcionários com seus respectivos departamentos:
SELECT F.*, D.Nome AS NomeDepartamento
FROM Funcionarios F
INNER JOIN Departamentos D ON F.DepartamentoID = D.DepartamentoID;

#Seleciona todos os funcionários com seus endereços:
SELECT F.*, E.Rua, E.Numero, E.Cidade, E.Estado, E.CEP
FROM Funcionarios F
INNER JOIN Enderecos E ON F.FuncionarioID = E.FuncionarioID;

#Seleciona todos os dependentes com mais de 12 anos:
SELECT * FROM Dependentes WHERE YEAR(CURDATE()) - YEAR(DataNascimento) > 12;

#Seleciona todos os funcionários com seus respectivos históricos de cargos:
SELECT F.*, HC.Cargo, HC.DataInicio, HC.DataFim
FROM Funcionarios F
LEFT JOIN HistoricoCargos HC ON F.FuncionarioID = HC.FuncionarioID;