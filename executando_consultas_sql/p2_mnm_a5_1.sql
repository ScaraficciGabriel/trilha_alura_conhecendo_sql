#1. Selecione os primeiros 5 registros da tabela Colaboradores, ordenando-os pelo nome em ordem crescente.

SELECT * FROM Colaboradores
ORDER BY nome ASC
LIMIT 5;

#2. Encontre todos os nomes na tabela Colaboradores que não têm uma descrição associada (suponha que a coluna de descrição possa ser nula).

SELECT * FROM Colaboradores
WHERE nome IS NULL;

#3. Liste os colaboradores cujo nome começa com 'A' e termina com 's' na tabela Colaboradores.

SELECT * FROM Colaboradores
WHERE nome LIKE 'A'% AND nome '%s';

#4. Exiba o cargo e a média salarial dos colaboradores agrupando-os por cargo, apenas para aqueles cuja média salarial é superior a $5000.

SELECT cargo, round(AVG(salario),2) AS media_salarial FROM HistoricoEmprego
GROUP BY cargo HAVING media_salarial > 5000;

#5. Selecione todos os clientes da tabela clientes e concatene o primeiro e o último nome, além de calcular o comprimento total do nome completo.

select (nome || ' é ' || parentesco || ' de um colaborador') as texto_concatenacao, 
length((nome || ' é ' || parentesco || ' de um colaborador')) as comprimento_texto_concatenacao from Dependentes;

#6.Para cada licença na tabela Licencas, exiba o ID do colaborador, a data de fim e a diferença em dias entre a data de início e a data de fim.

SELECT id_colaborador, tipolicenca, datafim,
JULIANDAY (DATE('now')) - JULIANDAY (dataconclusao) as intervalo_curso
FROM Treinamento;

#7. Selecione todos os itens de faturamento_bruto da tabela faturamento e arredonde o preço total para o número inteiro mais próximo.

SELECT CEIL(faturamento_bruto) from faturamento;

#9. Em faturamento_bruto, classifique como 'Faturamento ruim', 'Faturamento médio', ou 'Faturamento bom' com base nos valores: < 50.000 para 'ruim', entre 50.000 e 90.000 para 'médio', e maior que 90.000 para 'bom'.

SELECT  id, faturamento_bruto, mes,
CASE
	WHEN faturamento_bruto < 50000 THEN 'Faturamento ruim'
    WHEN faturamento_bruto BETWEEN 50001 AND 90000 THEN 'Faturamento médio'
    ELSE 'Faturamento bom'
END AS nivel_faturamento
FROM faturamento;

#10. Altere o nome da coluna data_nasc para data_nascimento na tabela Colaboradores e selecione todos os colaboradores que nasceram após '1990-01-01'.

SELECT id, nome, data_nasc FROM Colaboradores
WHERE data_nasc > '1990/MM/DD';






	

