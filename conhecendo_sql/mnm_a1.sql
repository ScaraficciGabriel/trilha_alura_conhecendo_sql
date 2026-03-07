#Você é uma pessoa analista de dados em uma empresa de comércio eletrônico e foi escolhido dentro da equipe para analisar o banco de dados de vendas da empresa. Você precisa extrair informações específicas sobre os clientes e os produtos vendidos.

#1. Liste todos os IDs únicos dos produtos vendidos pela empresa, ou seja, uma lista de produtos distintos. Utilize a cláusula DISTINCT para garantir que os IDs dos produtos sejam únicos.

SELECT DISTINCT id_produto FROM tabelavendasdesafioaula1;

#2. Identifique os clientes que se cadastraram na empresa antes de 2020. Liste o nome e a data de cadastro desses clientes. Utilize a cláusula WHERE para filtrar os registros.

SELECT nome_do_cliente FROM tabelaclientesdesafioaula1 WHERE data_de_cadastro < '2020-01-01';


