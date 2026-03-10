CREATE TABLE aluno(
 matricula INT AUTO_INCREMENT,
 nome_completo varchar(50) NOT NULL,
 curso varchar(25) NOT NULL,
 email varchar(50) NOT NULL,
 PRIMARY KEY(matricula)
);

INSERT INTO aluno (nome_completo, curso, email)
VALUES ("NK", "DS", "cauancouto@gmail.com");

INSERT INTO aluno (nome_completo, curso, email)
VALUES ("Don", "Donmania", "Don@gmail.com");


CREATE TABLE professores(
 id INT AUTO_INCREMENT,
 nome_completo varchar(50) NOT NULL,
 area varchar(25) NOT NULL,
 carga_horaria DOUBLE NOT NULL,
 PRIMARY KEY(id)
);

INSERT INTO professores(nome_completo, area, carga_horaria)
VALUES ("Anildo", "matematica", 85);


CREATE TABLE disciplinas(
 id INT AUTO_INCREMENT,
 nome varchar(30) NOT NULL,
 carga_horaria DOUBLE NOT NULL,
 PRIMARY KEY(id)
);

INSERT INTO disciplinas(nome, carga_horaria)
VALUES ("Matematica", 80);


CREATE TABLE matricula(
 id_aluno INT,
 id_disciplina INT,
 semestre varchar(10) NOT NULL,

 PRIMARY KEY(id_aluno, id_disciplina),

 FOREIGN KEY (id_aluno)
 REFERENCES aluno(matricula),

 FOREIGN KEY (id_disciplina)
 REFERENCES disciplinas(id)
);
