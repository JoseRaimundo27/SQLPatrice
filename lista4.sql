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
