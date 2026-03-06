#AULA 01

#1. Você é uma pessoa contratada pela empresa de RH Fokus para gerenciar o banco de dados da empresa. Ela precisa consultar algumas informações específicas que auxiliarão tanto as empresas contratantes de pessoas colaboradoras, quanto as pessoas cadastradas como pessoas colaboradoras que desejam conseguir uma oportunidade de trabalho e progredir em suas carreiras.
Então, como podemos trazer uma das primeiras informações solicitadas pela Fokus: identificar as cinco pessoas colaboradoras que possuem as maiores remunerações? A Fokus quer usar essas informações para promover um treinamento para todas as outras pessoas colaboradoras cadastradas. A ideia é convidar essas cinco pessoas com as maiores remunerações para compartilhar um pouco sobre suas trajetórias de carreira e incentivar as outras pessoas que também estão em busca de uma oportunidade.

SELECT * FROM HistoricoEmprego 
ORDER BY salario DESC
LIMIT 5;

#2. Ao rodarmos essa nova consulta, aparecem apenas as 5 pessoas com salário mais alto. Com isso, já temos todas as informações das pessoas colaboradoras que estão na tabela "Colaboradores".
Porém, se analisarmos a coluna DataTermino, notamos que algumas dessas pessoas colaboradoras têm uma data presente. Isso significa que eles já encerraram os contratos na Fokus. Para nós, não é interessante trazer esses colaboradora que não estão empregados.

SELECT * FROM HistoricoEmprego 
WHERE datatermino ISNULL
ORDER BY salario DESC
LIMIT 5;


#AULA 02

#3. Agora, a Fokus tem uma nova demanda: encontrar o nome de um treinamento específico que um colaborador mencionou como muito bom e indicar para outras pessoas que precisam desse conhecimento.

No entanto, a Fokus só se lembra que o início do nome do curso era "O poder". Eles não têm mais nenhuma informação, apenas sabem que o curso está cadastrado na tabela de treinamento, que contém todos os treinamentos feitos pelos colaboradores. Dito isso, como trazer essa informação?

SELECT * FROM Treinamento 
WHERE curso LIKE 'O poder%';

#4. Podemos também querer trazer uma palavra que está no meio do nome. Por exemplo: a Fokus também gostaria de filtrar os cursos que tenham, no meio do nome do curso, a palavra "realizar".

SELECT * FROM Treinamento
WHERE curso LIKE '%realizar%';

#5. Se a Fokus também quisesse encontrar os dados de uma pessoa colaboradora específica chamada Isadora, mas eles não se lembram do sobrenome, como poderíamos fazer essa consulta?

SELECT * FROM Colaboradores
WHERE nome LIKE 'Isadora%';

#6. Como poderíamos resolver a primeira demanda, que seria encontrar alguma pessoa colaboradora que tenha o cargo de professor e que não esteja trabalhando no momento?

SELECT * FROM HistoricoEmprego
WHERE cargo = 'Professor' AND datatermino NOTNULL;

#7. Porém, e se em vez de restringir a consulta, a Fokus quisesse buscar consultas com mais condições e mais amplas? Como poderíamos fazer isso?
No caso, ela quer trazer profissionais cadastrados como oftalmologistas ou dermatologistas. Não importa muito se estão trabalhando no momento ou não, ela só quer ter acesso a esses profissionais, porque há uma demanda específica para profissionais dessa área, mas independentemente de eles estarem empregados ou não, eles podem se interessar por essa demanda.

SELECT * FROM HistoricoEmprego
WHERE cargo = 'Oftalmologista' OR cargo = 'Dermatologista';

#8. E se quiséssemos, por exemplo, acrescentar profissões? Suponha que a Fokus queira filtrar todos os oftalmologistas ou dermatologistas ou professores. Nesse caso, precisaríamos usar OR repetidamente e acrescentar cada condição individualmente?

SELECT * FROM HistoricoEmprego
WHERE cargo IN ('Oftalmologista', 'Dermatologista', 'Professor');

#9. Poderíamos seguir o mesmo caminho se quiséssemos fazer uma consulta excluindo alguns registros. Por exemplo: se quiséssemos puxar todas as pessoas cadastradas com suas respectivas profissões, menos oftalmologista, dermatologista e professor.

SELECT * FROM HistoricoEmprego
WHERE cargo Not IN ('Oftalmologista', 'Dermatologista', 'Professor');

#10. Agora, a Fokus tem algumas demandas mais específicas que vão exigir a utilização de conceitos que já abordamos anteriormente, mas simultaneamente, trazendo uma consulta mais complexa.
A Fokus deseja encontrar dois cursos específicos da tabela de treinamento. Além disso, esses cursos precisam ser de uma instituição específica. Ela não tem os dados completos de cada curso, apenas o termo de início do nome de cada curso e o nome da instituição que ela deseja trazer.
Como podemos trazer esses dois cursos em uma única consulta, resolvendo essa demanda de uma só vez?

SELECT * FROM Treinamento
WHERE (curso LIKE 'O direito%' AND instituicao = 'da Rocha')
OR (curso LIKE 'O conforto%' AND instituicao = 'das Neves');


#AULA 03

#11. Agora, a Fokus tem novas demandas, mas estas são voltadas para a parte interna da empresa, a parte de números de faturamento. A empresa deseja saber os meses de maior e menor faturamento na história da empresa para poder realizar uma investigação em cada mês, entender o que foi feito de certo e de errado, ver se isso tem alguma coisa a ver com a sazonalidade e tomar as medidas necessárias para repetir os bons meses, de faturamento alto, e tentar evitar, ao máximo, meses com faturamento muito ruim.

SELECT mes, MAX(faturamento_bruto) FROM faturamento;
SELECT mes, MIN(faturamento_bruto) FROM faturamento;

#12. Outra informação que a Fokus deseja saber é a soma dos novos clientes do último ano, do ano de 2023. Como nós poderíamos somar todos os novos clientes?

SELECT SUM(numero_novos_clientes) AS total_novos_clientes_2023 FROM faturamento 
WHERE mes LIKE '%2023';

#13. A Fokus gostaria de saber a média do lucro e a média das despesas que teve durante todos os meses de existência da empresa.

SELECT AVG(despesas) FROM faturamento;
SELECT AVG(lucro_liquido) FROM faturamento;

#14. A Fokus deseja saber a quantidade exata de pessoas colaboradoras desempregadas.

SELECT COUNT(*) FROM HistoricoEmprego
WHERE datatermino NOT NULL;

#15. A Fokus gostaria, por exemplo, de saber quais os tipos de parentescos diferentes existem entre as pessoas colaboradoras e as pessoas dependentes. Na tabela de dependentes, quais são os tipos existentes de parentesco — pai, filho, avô, tio, tia? A empresa quer saber quais são todos os tipos existentes.

SELECT parentesco, COUNT(*) FROM Dependentes
GROUP BY parentesco;

#16. Outra informação que a Fokus deseja que tragamos da base de dados é a quantidade de cursos por instituição. Ela deseja saber quais as instituições que têm mais cursos procurados por pessoas colaboradoras, porque ela tem interesse em saber um pouco mais dessas instituições, entrar em contato e ver se é possível fazer uma parceria para trazer descontos para as pessoas colaboradoras.

SELECT instituicao, count(curso) FROM Treinamento
GROUp by instituicao
HAVING COUNT(curso) > 2;


#AULA 04 

#17. Agora, a Fokus tem outras demandas de informações do banco de dados. Ela deseja saber se todos os CPFs cadastrados das pessoas colaboradoras estão registrados corretamente. Ela quer verificar se todos os campos de registro CPF estão preenchidos com os 11 números do CPF.

SELECT COUNT(*), LENGTH(cpf) qtd
FROM Colaboradores
WHERE qtd = 11;

#18. A próxima demanda que a Fokus trouxe é que ela gostaria de ver os dados das pessoas colaboradoras de uma forma mais dinâmica, mais integrada, sem parecer muito uma tabela. Como se fosse um pequeno texto falando de cada pessoa colaboradora e é possível fazer isso utilizando a linguagem SQL.

SELECT (' A pessoa colaboradora ' || nome || ' de CPF ' || cpf || ' possui o seguinte endereço: ' || endereco) AS texto
FROM Colaboradores;

#19. Podemos observar que a coluna de data de início da licença das pessoas colaboradoras está no formato ano, mês e dia. A Fokus deseja trazer apenas o ano e o mês que cada pessoa colaboradora iniciou a licença. Como poderíamos trazer essa mesma coluna de data, essa mesma informação, num formato de data diferente?

SELECT id_colaborador, STRFTIME('%Y/%m', datainicio) FROM Licencas;

#20. A Fokus deseja saber qual o intervalo de tempo que cada pessoa colaboradora ficou no contrato que ela tem cadastrado na base de dados.

SELECT id_colaborador, JULIANDAY (datatermino) - JULIANDAY (datacontratacao)
FROM HistoricoEmprego
WHERE datatermino IS NOT NULL;

#21. Realizamos alguns cálculos com as funções de agregação, como a média, o faturamento bruto médio, faturamento líquido etc.
A Fokus deseja ver esses dados mais arredondados, porque, quando trouxemos esses resultados, vieram números com várias casas decimais depois da vírgula. Como é um valor financeiro, um valor em reais, para ela interessa apenas duas casas após a vírgula, um valor em centavos.

SELECT AVG(faturamento_bruto), ROUND (AVG(faturamento_bruto),2) FROM faturamento;

SELECT CEIL(faturamento_bruto), CEIL(despesas) FROM faturamento;

#22. No vídeo anterior, nós trouxemos algumas demandas da Fokus usando funções para dados do tipo numérico. Agora, a Fokus deseja ver a informação do faturamento bruto médio como uma linha de texto, então usaremos uma função de conversão.

SELECT (' O faturamento bruto médio foi ' || CAST(ROUND (AVG(faturamento_bruto),2) AS TEXT))
FROM faturamento;


#AULA 05

#23. Agora, a Fokus tem uma nova demanda: ela quer separar as pessoas colaboradoras pela faixa salarial, para ter uma noção de qual é a média de ganho de cada profissão, de cada cargo. As empresas também se interessam em saber quanto cada cargo deseja receber, a faixa salarial em que cada cargo se enquadra.

SELECT id_colaborador, cargo, salario,
CASE
WHEN salario < 3000 THEN 'Baixo'
WHEN salario BETWEEN 3000 AND 6000 THEN 'Médio'
ELSE 'Alto'
END AS categoria_salario
FROM HistoricoEmprego;

#24. A Fokus gostaria de mudar o nome de uma tabela específica do banco de dados, que é a de HistoricoEmprego. Ela acredita que esse nome não é adequado e não descreve bem as informações que a tabela contém.
Portanto, ela gostaria de alterar o nome para CargosColaboradores, pois contém informações sobre cargos e salários, e ela acha que isso se encaixa melhor. Para isso, vamos usar a cláusula rename, que serve para renomear uma tabela, uma coluna específica, ou algo que gostaríamos de mudar o nome no nosso banco de dados.

ALTER TABLE HistoricoEmprego RENAME TO CargosColaboradores; 

