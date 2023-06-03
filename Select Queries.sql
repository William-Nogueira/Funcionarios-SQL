#Selecionar todos os funcionários do departamento de tecnologia:
SELECT * FROM Funcionarios WHERE DepartamentoID = 5;

#Selecionar todos os funcionários com salário acima de 5000,00 Reais:
SELECT * FROM Funcionarios WHERE Salario > 5000;

#Selecionar todos os funcionários com seus respectivos departamentos:
SELECT F.*, D.Nome AS NomeDepartamento
FROM Funcionarios F
INNER JOIN Departamentos D ON F.DepartamentoID = D.DepartamentoID;

#Selecionar todos os funcionários com seus endereços:
SELECT F.*, E.Rua, E.Numero, E.Cidade, E.Estado, E.CEP
FROM Funcionarios F
INNER JOIN Enderecos E ON F.FuncionarioID = E.FuncionarioID;

#Selecionar todos os dependentes dos funcionários com mais de 30 anos:
SELECT * FROM Dependentes WHERE YEAR(CURDATE()) - YEAR(DataNascimento) > 30;

