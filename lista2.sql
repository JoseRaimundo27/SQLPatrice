--1) Mostrar os funcionarios em ordem decrescente.
SELECT * FROM Funcionario ORDER BY nomeFuncionario DESC;
--2) Mostrar os valores distintos da coluno do gerente dos funcionarios.
SELECT DISTINCT codGerente as 'Gerentes' FROM Funcionario ORDER BY codGerente DESC
--3) Mostrar os valores distintos dos gerentes e das datas de admissão dos funcionários.
SELECT DISTINCT codGerente as 'Gerentes',dtAdmissao as 'Data de Admissão' FROM Funcionario 
--4) Mostrar os funcionários que tem gerente Daniela ou não tem gerente.
SELECT * FROM Funcionario WHERE codGerente = 1 or codGerente IS NULL
--5) Selecionar os funcionarios que foram admitidos no mes de Março/01 ou no mes de Outubro/01.
SELECT * FROM Funcionario WHERE dtAdmissao BETWEEN '2001-03-01 00:00:00' and '2001-03-31 00:00:00' or dtAdmissao BETWEEN '2001-10-01 00:00:00' and '2001-10-31 00:00:00';
--6) Mostrar o código do departamento e o sobrenome de todos os funcionarios exceto o 1. Organizar as linhas em ordem decrescente.
SELECT codDepto, sobrenmFunc FROM Funcionario WHERE not(codFuncionario =1) ORDER BY codDepto DESC 
--7) Mostrar nome, sobrenome onde: a. Codigo do departamento não é 1 nem 2 b. Sobrenome não comece com nenhuma letra de ‘D’ à ‘M’ c. Código do gerente ão é um valor nulo
SELECT nomeFuncionario, sobrenmFunc FROM Funcionario WHERE NOT(codDepto = 1) and NOT(codDepto = 2) and codGerente IS NOT NULL AND sobrenmFunc NOT BETWEEN 'd' and 'm';
--8)Relacionar os funcionarios que tem código 1, 2 ou 3 e que trabalhem no departamento de Marketing ou seja, codigo do Departamento é 1.
SELECT * FROM Funcionario WHERE (codFuncionario = 1 or codFuncionario =2 or codFuncionario=3) and codDepto =1 
