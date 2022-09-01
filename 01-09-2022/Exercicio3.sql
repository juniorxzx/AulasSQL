CREATE DATABASE db_escola;

USE db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
sobrenome varchar(255),
data_de_inicio date,
turma varchar(255),
nota decimal(4,2),
primary key(id)
);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Henrique", "Felipe", "2022-02-10", "Turma 4", 10.00);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Pedro", "Rodrigues", "2022-02-10", "Turma 4", 07.25);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Edvaldo", "Souza", "2022-02-10", "Turma 4", 05.99);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Armando", "Algo", "2022-02-10", "Turma 4", 10.00);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Severino", "Tiete", "2022-02-10", "Turma 4", 00.00);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Ketlyn", "Amaral", "2022-02-10", "Turma 4", 10.00);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Natasha", "Fernanda", "2022-02-10", "Turma 4", 09.05);

INSERT INTO tb_alunos(nome, sobrenome, data_de_inicio, turma, nota) 
VALUES ("Guilherma", "Pontes", "2022-02-10", "Turma 4", 08.00);


-- Retornando valor maior que 2000

SELECT * from tb_alunos where nota > 7;

-- Retornando salario menor que 2000

SELECT * from tb_alunos where nota < 7;

-- Atualizando valor da tabela

UPDATE tb_alunos SET nota = 05.99 where id = 5;



