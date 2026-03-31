create table curso(
id int auto_increment primary key,
nome varchar(50)
);

create table aluno (
    id int AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_curso INT,
    idade int not null,
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);

INSERT INTO curso (nome) VALUES ("Informática");
INSERT INTO curso (nome) VALUES ("Administração");
INSERT INTO curso (nome) VALUES ("TI");


INSERT INTO aluno (nome, id_curso, idade) VALUES ("Cauan", 1, 19);
INSERT INTO aluno (nome, id_curso, idade) VALUES ("Maria", 2, 20);
INSERT INTO aluno (nome, id_curso, idade) VALUES ("João", 1, 30);
INSERT INTO aluno (nome, idade) VALUES ("Kleber", 15);

SELECT 
    a.nome AS alunos,
    c.nome AS curso
FROM aluno a
INNER JOIN curso c
    ON a.id_curso = c.id;

SELECT 
    aluno.nome AS aluno,
    curso.nome AS curso
FROM aluno
LEFT JOIN curso
    ON aluno.id_curso = curso.id;
    
SELECT 
    curso.nome AS curso,
    COUNT(aluno.id) AS quantidade_alunos
FROM aluno
INNER JOIN curso
     ON aluno.id_curso = curso.id
    GROUP BY curso.nome;
    
SELECT 
    curso.nome AS curso,
    COUNT(aluno.id) AS quantidade_alunos
FROM aluno
LEFT JOIN curso
    ON aluno.id_curso = curso.id
    GROUP BY curso.nome;
    
SELECT 
    curso.nome AS curso,
    AVG(aluno.idade) AS media_idade
FROM aluno
LEFT JOIN curso
    ON aluno.id_curso = curso.id
GROUP BY curso.nome;

SELECT 
    curso.nome AS curso,
    MAX(aluno.idade) AS Maior_Idade
FROM aluno
INNER JOIN curso
    ON aluno.id_curso = curso.id
GROUP BY curso.nome;

SELECT 
    curso.nome AS curso,
    MIN(aluno.idade) AS Menor_Idade
FROM aluno
INNER JOIN curso
    ON aluno.id_curso = curso.id
GROUP BY curso.nome;

SELECT 
    aluno.nome AS aluno
FROM aluno
INNER JOIN curso
    ON aluno.id_curso = curso.id
WHERE curso.nome = 'TI';

SELECT 
    curso.nome AS curso,
    SUM(aluno.idade) AS soma_idades
FROM curso
LEFT JOIN aluno
    ON aluno.id_curso = curso.id
GROUP BY curso.nome;
