Essa pasta contém os códigos em linguagem SQL utilizados durante a resolução do exercícios práticos ("mão na massa") + projeto de aprofundamento às consultas do banco de dados da empresa fictícia de RH, Fokus. Todos realizados durante as aulas do curso SQLite Online: executando consultas SQL, na trilha Conhecendo SQL, da plataforma ALura.

# Aprendizado de cada aula do curso

**Aula 01:** LIMIT, IS NULL, NOT NULL

**Aula 02:** LIKE, Operadores Lógicos (AND, OR, IN, NOT)

**Aula 03:** Funções de Agregação (MAX, MIN, SUM), COUNT, AVG, GROUP BY, HAVING

**Aula 04:** Funções de String (TRIM, INSTR, REPLACE, SUBSTR), Funções de Data (STRFTIME, JULIANDAY, DATE, TIME, DATETIME), Funções Numéricas (ROUND, CEIL, FLOOR, POWER, SQRT, RANDOM, ABS, HEX), Funções de Conversão (CAST, CONVERT)

**Aula 05:** CASE, RENAME

# Contextualização dos códigos contidos dentro dos arquivos da pasta "executando_consultas_sql"

## p2_projeto.sql 

Projeto cujo objetivo foi explorar de forma mais aprofundada as consultas por meio de um banco de dados de uma empresa de RH fictícia, a Fokus.

## p2_mnm_a5_1.sql + Banco+de+dados+Fokus.db | Mão na massa: hora da prática

10 exercícios de SQL que abrangem uma variedade de tópicos, desde funções de agregação e string até operadores lógicos e cláusulas de filtragem. 

**Observação:** Os exercícios foram projetados para serem aplicados em um banco de dados genérico e sofreram ajustes como a mudança de algumas descrições e a exclusão da questão 9 para se adequarem a um esquema específico voltado ao banco de dados da empresa Fokus.

## p2_mnm_a5_2.sql + sqlite.db | Mão na massa: gerenciamento escolar com banco de dados relacional

Desafio que propõe exercitar algumas consultas típicas que podem ser realizadas em um sistema de gerenciamento escolar.

# Resultados

## p2_projeto.sql 

**- Problema:** A empresa de RH fictícia Fokus precisava extrair e analisar informações gerenciais sobre o perfil de seus colaboradores, o engajamento em treinamentos e o histórico de faturamento financeiro. O objetivo era explorar essas consultas de forma mais aprofundada para entender o cenário interno.

**- Hipótese testada:** A aplicação de filtros combinados (WHERE, LIKE, IN), agrupamentos (GROUP BY) e funções de agregação (MAX, MIN, SUM, AVG) seria suficiente para isolar as fatias exatas de dados que a empresa demandava.

**- Descoberta:** Foi possível identificar de forma precisa os funcionários ativos com os maiores salários, localizar cursos específicos usando apenas fragmentos de texto, e calcular médias financeiras arredondadas. Também foi possível categorizar o nível salarial das pessoas colaboradoras (Baixo, Médio ou Alto) através de condições lógicas.

**- Decisão a ser tomada:** As respostas obtidas ajudam a Fokus a selecionar profissionais experientes para palestras de carreira, identificar candidatos adequados para vagas específicas em aberto, e analisar sazonalidades financeiras para evitar meses de baixo faturamento.

## p2_mnm_a5_1.sql + Banco+de+dados+Fokus.db | Mão na massa: hora da prática

**- Problema:** Havia a necessidade de resolver 10 exercícios práticos no banco de dados da Fokus para manipular e formatar dados que iam além da simples extração.

**- Hipótese testada:** O uso de funções de string, funções matemáticas (como CEIL e ROUND), operadores lógicos e cláusulas de filtragem poderia transformar dados brutos em informações modeladas e prontas para leitura.

**- Descoberta:** Foi comprovado como concatenar textos para gerar frases dinâmicas descritivas, como calcular a diferença exata de dias entre duas datas utilizando JULIANDAY, e como usar a estrutura CASE para classificar resultados de faturamento em diferentes níveis de qualidade.

**- Decisão a ser tomada:** Permite que a gestão crie relatórios de leitura mais amigável, avalie com precisão a duração de licenças ou contratos, e identifique rapidamente o desempenho financeiro através de rótulos claros (ruim, médio e bom).

## p2_mnm_a5_2.sql + sqlite.db | Mão na massa: gerenciamento escolar com banco de dados relacional

**- Problema:** Um sistema de gerenciamento escolar precisava extrair informações acadêmicas rotineiras para acompanhar o status e o perfil dos seus alunos.

**- Hipótese testada:** Foi testada a capacidade do banco de dados relacional de gerar métricas complexas cruzando dados, manipulando formatos de data (STRFTIME) e aplicando regras de negócio diretamente nas consultas.

**- Descoberta:** Descobriu-se como isolar a média de notas de uma disciplina específica (História), como identificar aniversariantes de um mês exato, calcular a idade dinâmica dos alunos comparando a data de nascimento com a data atual, e criar uma regra para definir automaticamente se um aluno foi aprovado ou não.

**- Decisão a ser tomada:** Auxiliaria a coordenação pedagógica a monitorar facilmente o volume de alunos aprovados e reprovados (nota >= 6), acompanhar o rendimento geral por matéria e organizar ações administrativas, como mapear os aniversariantes de fevereiro.




