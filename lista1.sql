--1-Selecionar os dados de toda tabela Funcionario
SELECT * FROM Funcionario
--2- Selecione nome e sobrenome de Funcionario
SELECT nomeFuncionario, sobrenmFunc FROM Funcionario;
--3-Selecione nome e sobrenome como coluna em Funcionario
SELECT CONCAT(nomeFuncionario," ", sobrenmFunc) as nome FROM Funcionario;
--4- Selecione as comidas que tenham preço superior a 6 reais
SELECT *  FROM Comida WHERE preco > 6;
--5- Mostre o nome do funcionario e ao lado de todos a qualificação que o mesmo é um funcionario competente
SELECT nomeFuncionario as Nome, 'Funcionario Competente' as Competencia FROM Funcionario
--6- Selecione nome e sobrenome como nome dos funcionários que têm Daniela como chefe ou codigo do gerente igual a 1
SELECT nome,sobrenome FROM Funcionario WHERE codigo_gerente=1
--7-Selecione os funcionarios que tiveram data de admissão entre 15/02 e 16/02
SELECT * FROM Funcionario WHERE DtAdmissao BETWEEN '2000-02-15 00:00:00' and '2002-02-16 00:00:00'
--8- Mostre as comidas e seus respectivos valores novos com desconto de 10%, somente as comidas que esdte desconto seja menor que 2 reais
SELECT *,0.9*preco as 'preço desconto' FROM Comida WHERE 0.9*preco < 2
--9- Mostre os nomes dos funcionarios que nao possuem gerentes
SELECT nomeFuncionario FROM Funcionario WHERE codGerente IS NULL
