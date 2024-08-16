--1) Mostre código e data da refeição de todas as refeições da funcionária “Daniela”.
SELECT *
FROM Refeicao r
INNER JOIN Funcionario f --Inner join pois quero apenas as refeições que têm funcionarios
ON  r.codFuncionario = f.codFuncionario
WHERE f.nomeFuncionario = 'Daniela'
--2) Selecionar a descrição dos produtos que são fornecidos pelo fornecedor = “Empresa A”. Ordenar os dados em ordem crescente.
SELECT *
FROM Comida c
INNER JOIN Fornecedor f
ON  f.codFornecedor = c.codFornecedor
WHERE f.nomeFornecedor = 'Empresa A'
--Selecione AS COMIDAS QUE TÊM FORNECEDOR, e esse fornecedor tenha nome Empresa A
--3) Selecionar os produtos que possuem mais de uma porção de comida.
SELECT * FROM Comida c INNER JOIN ItensRefeicao i ON c.codProduto = i.codProduto
--4) Selecione os nomes dos funcionários que comem mais de uma porção de comida.
SELECT  f.nomefuncionario FROM Funcionario f INNER JOIN Refeicao r ON f.codFuncionario = r.codFuncionario
INNER JOIN ItensRefeicao ir on r.codrefeicao = ir.codrefeicao where ir.quantidade > 1
--5) Selecione os produtos que a funcionaria “Daniela” deseja comer.
SELECT c.descProduto
FROM Funcionario f
INNER JOIN Refeicao r ON f.codFuncionario = r.codFuncionario
INNER JOIN ItensRefeicao ir ON r.codRefeicao = ir.codRefeicao
INNER JOIN Comida c ON ir.codProduto = c.codProduto AND ir.codFornecedor = c.codFornecedor
WHERE f.nomeFuncionario = 'Daniela';
