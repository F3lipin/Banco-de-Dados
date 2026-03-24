create table funcionario(
id int auto_increment primary key unique,
nome varchar(100) not null,
salario double not null,
departamento varchar(80) not null,
create_at timestamp default current_timestamp,
update_at timestamp default current_timestamp on update current_timestamp
);

INSERT INTO funcionario(nome, salario, departamento) values ("Carlos", 3000, "TI");
INSERT INTO funcionario(nome, salario, departamento) values ("Maria", 4500, "RH");
INSERT INTO funcionario(nome, salario, departamento) values ("João", 5000, "TI");
INSERT INTO funcionario(nome, salario, departamento) values ("Ana", 3500, "Financeiro");
INSERT INTO funcionario(nome, salario, departamento) values ("Pedeo", 2800, "RH");

SELECT * from funcionario;
SELECT max(id) FROM funcionario;
SELECT * FROM funcionario WHERE departamento = "TI";
SELECT COUNT(*) FROM funcionario WHERE departamento = "TI";
SELECT * FROM funcionario WHERE salario > 4000;
INSERT INTO funcionario(nome, salario, departamento) values ("Juliana", 4200, "TI");
UPDATE funcionario SET salario = 3500 WHERE nome = "Carlos";
UPDATE funcionario SET salario = salario * 1.10 WHERE departamento = "RH";
DELETE FROM funcionario WHERE nome = "Pedeo";
SELECT * FROM funcionario ORDER BY salario DESC;
SELECT AVG(salario) FROM funcionario;
SELECT max(salario) FROM funcionario;
SELECT min(salario) FROM funcionario;
