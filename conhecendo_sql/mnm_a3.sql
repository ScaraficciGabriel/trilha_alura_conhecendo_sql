CREATE TABLE tabela_funcionarios (
  id_funcionario		INT	PRIMARY KEY,
  nome_funcionario			VARCHAR(100),
  cargo_funcionario			VARCHAR(50),
  departamento				VARCHAR(50),
  data_contratacao			DATE,
  salario_funcionario			FLOAT
  );

INSERT INTO tabela_funcionarios
(id_funcionario, nome_funcionario, cargo_funcionario, departamento, data_contratacao, salario_funcionario)
VALUES
('32D', 'João Silva', 'Desenvolvedor Software', 'TI', '2023-10-24', 6000.00);