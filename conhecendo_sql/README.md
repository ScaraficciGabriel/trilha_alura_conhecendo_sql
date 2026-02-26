Essa pasta contém os códigos em linguagem SQL utilizados durante a resolução do exercícios práticos ("mão na massa") durante as aulas do curso SQLite Online: conhecendo instruções SQL, na trilha Conhecendo SQL, da plataforma ALura.

# Aprendizado de cada aula do curso:

**- Aula 01:** SELECT, DISTINCT, WHERE

**- Aula 02:** CREATE TABLE, ALTER TABLE, DROP TABLE, PRIMARY KEY, FOREIGN KEY

**- Aula 03:** INSERT

**- Aula 04:** Filtros (>,<,=,<>), Filtros Compostos (AND, OR, NOT BETWEEN), ORDER BY, ALIAS

**- Aula 05:** UPDATE, DELETE

# Contextualização dos códigos contidos dentro dos arquivos da pasta "conhecendo_sql":

## - mnm_a1 + tabela+clientes+desafio+aula+1 + tabela+produtos+desafio+aula+1 + tabela+vendas+desafio+aula+1| mão na massa - aula 1

**Exercício:**  

Você é uma pessoa analista de dados em uma empresa de comércio eletrônico e foi escolhido dentro da equipe para analisar o banco de dados de vendas da empresa. Você precisa extrair informações específicas sobre os clientes e os produtos vendidos.

Liste todos os IDs únicos dos produtos vendidos pela empresa, ou seja, uma lista de produtos distintos. Utilize a cláusula DISTINCT para garantir que os IDs dos produtos sejam únicos.

Identifique os clientes que se cadastraram na empresa antes de 2020. Liste o nome e a data de cadastro desses clientes. Utilize a cláusula WHERE para filtrar os registros.


## - mnm_a3 | mão na massa - aula 3

**Exercício:** 

Você trabalha como um administrador de banco de dados em uma empresa de recursos humanos. A empresa precisa armazenar informações sobre novos funcionários em seu banco de dados. Sua tarefa é criar uma instrução SQL INSERT para inserir os detalhes de um novo funcionário em uma tabela de funcionários.

A tabela de funcionários possui os seguintes campos:

ID (Chave Primária)
Nome (Texto)
Cargo (Texto)
Departamento (Texto)
Data de Contratação (Data)
Salário (Decimal)

Escreva uma instrução SQL INSERT para adicionar um novo funcionário à tabela. Use os seguintes dados de exemplo:

ID: 32D
Nome: João Silva
Cargo: Desenvolvedor de Software
Departamento: TI
Data de Contratação: 2023-10-24
Salário: 6000.00 


## - mnm_a5_1 | mão na massa 1 - aula 5

**Exercício:** 

1) Crie uma tabela chamada funcionarios com as seguintes colunas: id (int, chave primária), nome (varchar(100)), departamento (varchar(100)) e salario (float). Em seguida, insira os seguintes registros de funcionários na tabela:

ID: 1, Nome: Heitor Vieira, Departamento: Financeiro, Salário: 4959.22
ID: 2, Nome: Daniel Campos, Departamento: Vendas, Salário: 3884.44
ID: 3, Nome: Luiza Dias, Departamento: TI, Salário: 8205.78
ID: 4, Nome: Davi Lucas Moraes, Departamento: Financeiro, Salário: 8437.02
ID: 5, Nome: Pietro Cavalcanti, Departamento: TI, Salário: 4946.88
ID: 6, Nome: Evelyn da Mata, Departamento: Vendas, Salário: 5278.88
ID: 7, Nome: Isabella Rocha, Departamento: Marketing, Salário: 4006.03
ID: 8, Nome: Sra. Manuela Azevedo, Departamento: Vendas, Salário: 6101.88
ID: 9, Nome: Brenda Cardoso, Departamento: TI, Salário: 8853.34
ID: 10, Nome: Danilo Souza, Departamento: TI, Salário: 8242.14
2) Selecione todos os campos de todos os registros na tabela funcionarios.

3) Na tabela funcionarios, selecione os nomes dos funcionários que trabalham no departamento de "Vendas".

4) Selecione os funcionários da tabela funcionarios cujo salário seja maior que 5000.

5) Na tabela funcionarios, selecione todos os departamentos distintos.

6) Atualize o salário dos funcionários do departamento de "TI" para 7500 na tabela funcionarios.

7) Delete da tabela funcionarios todos os registros de funcionários que ganham menos de 4000.

8) Selecione os nomes e salários dos funcionários que trabalham no departamento de "Vendas" e cujo salário seja maior ou igual a 6000.

9) Crie uma tabela chamada projetos com as colunas: id_projeto (int, chave primária), nome_projeto (varchar(100)), id_gerente (int, referência a id na tabela funcionarios). Insira 3 registros na tabela projetos e, em seguida, selecione todos os projetos cujo id_gerente seja igual a 2.

10) Remova a tabela funcionarios do banco de dados.


- mnm_a5_2 | mão na massa 2 - aula 5

**Exercício:** 

**Contexto**

Imagine que você seja o responsável por criar e gerenciar um banco de dados para uma escola. Esse banco de dados ajudará a organizar informações importantes sobre alunos, professores, disciplinas, turmas e notas.

**Desafio**

Sua missão é dar os primeiros passos para configurar e usar esse banco de dados.

**1 - Criar tabelas**

O primeiro passo é definir a estrutura do banco de dados, criando tabelas para armazenar informações específicas. Utilizaremos SQL (Structured Query Language) para criar as tabelas. Aqui estão os dados que você pode utilizar:

Tabela "Alunos" armazenará informações sobre os estudantes, como:

ID do Aluno: Um identificador único para cada aluno.
Nome do Aluno: O nome completo do aluno.
Data de Nascimento: A data de nascimento do aluno.
Gênero: O gênero do aluno (masculino, feminino, outros).
Endereço: O endereço do aluno.
Telefone de Contato: O número de telefone de contato do aluno.
E-mail: O endereço de e-mail do aluno.
Tabela "Professores" conterá detalhes sobre os professores da escola:

ID do Professor: Um identificador único para cada professor.
Nome do Professor: O nome completo do professor.
Data de Nascimento: A data de nascimento do professor.
Gênero: O gênero do professor.
Telefone de Contato: O número de telefone de contato do professor.
E-mail: O endereço de e-mail do professor.
Tabela "Disciplinas" manterá registros das matérias oferecidas, incluindo:

ID da Disciplina: Um identificador único para cada disciplina.
Nome da Disciplina: O nome da disciplina.
Descrição: Uma descrição da disciplina.
Carga Horária: A carga horária da disciplina.
ID do Professor: Uma chave estrangeira que faz referência ao professor que leciona a disciplina.
Tabela "Turmas" será usada para registrar turmas específicas:

ID da Turma: Um identificador único para cada turma.
Nome da Turma: O nome ou código da turma.
Ano Letivo: O ano letivo da turma.
ID do Professor Orientador: Uma chave estrangeira que faz referência ao professor que orienta a turma.
Tabela "Turma_Disciplinas" armazenara os dados das associações entre turmas e disciplinas:

ID da Turma: Uma lista de chaves estrangeiras que fazem referência as turmas existentes.
ID das Disciplinas: Uma lista de chaves estrangeiras que fazem referência às disciplinas ministradas na turma.
OBS.: Os dois campos juntos formam a chave primaria da tabela

Tabela "Turma_Alunos" será usada para registrar os dados das associações entre turmas e alunos:

ID da Turma: Uma lista de chaves estrangeiras que fazem referência as turmas existentes.
ID dos Alunos: Uma lista de chaves estrangeiras que fazem referência aos alunos matriculados na turma.
OBS.: Os dois campos juntos formam a chave primaria da tabela

Tabela "Notas" guardará as notas dos alunos em diferentes disciplinas:

ID da Nota: Um identificador único para cada nota.
ID do Aluno: Uma chave estrangeira que faz referência ao aluno.
ID da Disciplina: Uma chave estrangeira que faz referência à disciplina.
Valor da Nota: A nota atribuída ao aluno na disciplina.
Data da Avaliação: A data em que a avaliação foi realizada.

**2 - Inserir dados**

Depois de criar as tabelas, é hora de inserir os dados.
Para isso, você pode baixar aqui neste link (arquivo-desafio), todos os arquivos com os dados para popular todas as tabelas.

**3 - Realizar consultas simples**

Com os dados inseridos nas tabelas, podemos realizar consultas simples para obter informações úteis, como:

Consulta 1: Executar consultas para verificar se os dados foram importados corretamente em todas as tabelas.
Consulta 2: Retorne as informações de todos os alunos ordenados pelo nome.
Consulta 3: Retornar a disciplina que possui a carga horaria maior que 40.
Consulta 4: Buscar as notas que são maiores que 6 e menores que 8.
