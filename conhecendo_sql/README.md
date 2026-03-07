Essa pasta contém os códigos em linguagem SQL utilizados durante a resolução do exercícios práticos ("mão na massa") durante as aulas do curso SQLite Online: conhecendo instruções SQL, na trilha Conhecendo SQL, da plataforma ALura.


# Aprendizado de cada aula do curso:

**Aula 01:** SELECT, DISTINCT, WHERE

**Aula 02:** CREATE TABLE, ALTER TABLE, DROP TABLE, PRIMARY KEY, FOREIGN KEY

**Aula 03:** INSERT

**Aula 04:** Filtros (>,<,=,<>), Filtros Compostos (AND, OR, NOT BETWEEN), ORDER BY, ALIAS

**Aula 05:** UPDATE, DELETE


# Contextualização dos códigos contidos dentro dos arquivos da pasta "conhecendo_sql":

## mnm_a1 + tabela+clientes+desafio+aula+1 + tabela+produtos+desafio+aula+1 + tabela+vendas+desafio+aula+1 | mão na massa - aula 1
 
Exercício onde você é uma pessoa analista de dados em uma empresa de comércio eletrônico e foi escolhido dentro da equipe para analisar o banco de dados de vendas da empresa. Você precisa extrair informações específicas sobre os clientes e os produtos vendidos.

## mnm_a3 | mão na massa - aula 3

Exercício onde você trabalha como um administrador de banco de dados em uma empresa de recursos humanos. A empresa precisa armazenar informações sobre novos funcionários em seu banco de dados. Sua tarefa é criar uma instrução SQL INSERT para inserir os detalhes de um novo funcionário em uma tabela de funcionários.

## mnm_a5_1 | mão na massa 1 - aula 5

Algumas atividades que auxiliares para praticar e fixar ainda mais cada conteúdo do curso.

## mnm_a5_2 + arquivo-desafio | mão na massa 2 - aula 5

Exercício onde você seja o responsável por criar e gerenciar um banco de dados para uma escola. Esse banco de dados ajudará a organizar informações importantes sobre alunos, professores, disciplinas, turmas e notas. O desafio consiste em dar os primeiros passos para configurar e usar esse banco de dados.

# Resolução

##  mnm_a1 + tabela+clientes+desafio+aula+1 + tabela+produtos+desafio+aula+1 + tabela+vendas+desafio+aula+1 | mão na massa - aula 1

**- Problema:** Havia a necessidade de extrair informações básicas de tabelas de vendas e clientes, especificamente identificando produtos únicos e filtrando clientes com base em datas antigas.

**- Hipótese testada:** O uso da instrução SELECT DISTINCT e de cláusulas de filtro WHERE com operadores de comparação de data seria suficiente para isolar esses dados específicos.

**- Descoberta:** Foi possível listar todos os IDs de produtos sem repetição a partir da tabela de vendas, além de conseguir filtrar os nomes dos clientes que foram cadastrados antes de janeiro de 2020.

**- Decisão a ser tomada:** Permitir que a área de negócios entenda o portfólio real e único de produtos vendidos, além de identificar a base de clientes mais antiga para possíveis ações ou campanhas de fidelização.

## mnm_a3 | mão na massa - aula 3

**- Problema:** Era preciso estruturar o armazenamento inicial de dados de funcionários, saindo apenas da consulta para a criação física da estrutura do banco de dados.

**- Hipótese testada:** A instrução CREATE TABLE combinada com a definição de tipos de dados adequados (como INT, VARCHAR, DATE e FLOAT) e a inserção de registros via INSERT INTO criaria uma base sólida para esses cadastros.

**- Descoberta:** Aprendeu-se a estruturar uma tabela definindo uma chave primária (PRIMARY KEY) e a popular essa tabela imediatamente com os dados completos de um funcionário de TI.

**- Decisão a ser tomada:** Ajudar a equipe de TI e o RH a padronizarem o cadastro de novos funcionários, garantindo que informações vitais como cargo, departamento e data de contratação sejam armazenadas no formato correto.

## mnm_a5_1 | mão na massa 1 - aula 5

**- Problema:** O desafio envolvia o gerenciamento completo (CRUD) dos dados de uma tabela de funcionários e o estabelecimento de novos relacionamentos estruturais entre tabelas.

**- Hipótese testada:** Instruções de manipulação de dados (UPDATE, DELETE) e de definição de integridade referencial (FOREIGN KEY) seriam capazes de gerenciar o ciclo de vida dos registros e suas conexões.

**- Descoberta:** Foi possível atualizar os salários de todo o departamento de TI para 7500, remover do sistema funcionários com salários abaixo de 4000, e criar uma tabela de projetos estritamente vinculada aos funcionários através de chaves estrangeiras.

**- Decisão a ser tomada:** Possibilita aos gestores realizar manutenções financeiras em massa (como reajustes salariais), limpar registros obsoletos da base e garantir que todo novo projeto tenha um gerente válido associado.

## mnm_a5_2 + arquivo-desafio | mão na massa 2 - aula 5

**- Problema:** Era preciso modelar e popular um banco de dados relacional complexo para um sistema de gerenciamento escolar, além de realizar consultas condicionais nesses registros recém-criados.

**- Hipótese testada:** A criação de múltiplas tabelas interligadas (como alunos, professores, disciplina, turmas e notas) utilizando restrições como CHECK e FOREIGN KEY garantiria a integridade do sistema para consultas acadêmicas.

**- Descoberta:** Descobriu-se como estruturar os relacionamentos, aplicar restrições de validação de dados (como limitar o preenchimento do gênero apenas para 'Masculino' ou 'Feminino') e consultar alunos ordenados alfabeticamente ou disciplinas por faixa de notas específicas.

**- Decisão a ser tomada:** Fornecer à administração da escola uma base robusta e confiável para matricular alunos, alocar professores, e gerar relatórios acadêmicos precisos baseados em cargas horárias e desempenho.
