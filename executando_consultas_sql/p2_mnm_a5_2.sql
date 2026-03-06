#Desafio

#Vamos considerar algumas consultas típicas que podem ser realizadas em um sistema de gerenciamento escolar.


#Consulta 1: Retornar a média de Notas dos Alunos em história.

SELECT id_disciplina, nome_disciplina FROM Disciplinas; #Descobrindo o id da disciplina de história (número 2).

SELECT id_aluno, nota FROM Notas
WHERE id_disciplina = '2'; #Notas de cada um dos 10 alunos na matéria de história.

SELECT id_aluno, AVG(nota) FROM Notas
WHERE id_disciplina = '2'; #Média de notas dos alunos em história. 


#Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.

SELECT * FROM alunos
WHERE nome_aluno LIKE ('A%');


#Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.

SELECT nome_aluno, data_nascimento FROM Alunos
WHERE STRFTIME('%m', data_nascimento) = '02';


#Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.

 SELECT nome_aluno,
      data_nascimento,
      (strftime('%Y', CURRENT_DATE) - strftime('%Y', data_nascimento)) - 
      (strftime('%m-%d', CURRENT_DATE) < strftime('%m-%d', data_nascimento)) AS idade
FROM Alunos;


#Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado se a sua nota foi igual ou maior que 6.


SELECT id_aluno, id_disciplina,
CASE
	WHEN nota >= '6' THEN 'Aprovado'
    ELSE 'Não aprovado'
END AS 'resultado_aprovacao'
FROM Notas;
