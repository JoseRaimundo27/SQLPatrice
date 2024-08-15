--1) Mostrar todos os funcionários que são gerenciados pelosfuncionários 202 ou 203.
select * from funcionario f
where f.codgerente in (202,203)
--2) Mostrar todos os funcionários que possuem a letra “N” no seu
--nome
select * from funcionario f
where UPPER(f.nomefuncionario) like &#39;%N%&#39;
select * from funcionario f
where f.nomefuncionario ilike &#39;%N%&#39;
--3) Mostrar o nome e a data de admissão dos funcionários que
--contenham os sobrenomes ‘Silva’ ou ‘Souza’, ordenados por nome.
select f.nomefuncionario, f.dtadmissao from funcionario f
where f.sobrenmfunc like &#39;Silva&#39; or f.sobrenmfunc like &#39;Souza&#39;
order by f.nomefuncionario
--4) Mostrar todos os funcionarios que tenham numero do telefone
--terminados por ‘4’.
select * from funcionario f
where f.telefone like &#39;%4&#39;
--5) Mostrar os funcionários que:
--a. Código do Depto não é Marketing e nem Desenvolvimento
--b. Sobrenome não comece com nenhuma letra de ‘D’ à ‘J’
--c. Sobrenome não termine com ‘S’
--d. CodGerente não seja um valor nulo.

select d.coddepto, f.sobrenmfunc, f.codgerente
from departamento d inner join funcionario f on d.coddepto =
f.coddepto
where d.nomedepto not in (&#39;Marketing&#39;,&#39;Desenvolvimento&#39;) and
(f.nomefuncionario not like &#39;D%&#39; AND f.nomefuncionario not
like &#39;E%&#39; AND f.nomefuncionario not like &#39;F%&#39; AND
f.nomefuncionario not like &#39;G%&#39; AND f.nomefuncionario not
like &#39;H%&#39; AND f.nomefuncionario not like &#39;J%&#39;) and
UPPER(f.sobrenmfunc) not like &#39;%S&#39; and f.codgerente is not
null
