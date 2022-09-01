CREATE DATABASE db_rh;

USE db_rh;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255),
sexo varchar(20),
data_inicio date,
funcao varchar(255),
primary key(id)
);

INSERT INTO tb_colaboradores(nome, sexo, data_inicio, funcao) 
VALUES ("Julio", "Masculino", "2021-09-10", "Adm");

INSERT INTO tb_colaboradores(nome, sexo, data_inicio, funcao) 
VALUES ("Pedro", "Masculino", "2022-05-04", "Adm");

INSERT INTO tb_colaboradores(nome, sexo, data_inicio, funcao) 
VALUES ("Hesthefhany", "Feminino", "2019-04-20", "CEO");

INSERT INTO tb_colaboradores(nome, sexo, data_inicio, funcao) 
VALUES ("Marcia", "Feminino", "2019-04-20", "Chefe de equipe");

INSERT INTO tb_colaboradores(nome, sexo, data_inicio, funcao) 
VALUES ("Natasha", "Feminino", "2021-09-10", "Limpeza");

ALTER TABLE tb_colaboradores ADD salario decimal(6,2);

UPDATE tb_colaboradores SET salario = 1700.00 WHERE id = 1;
UPDATE tb_colaboradores SET salario = 7000.00 WHERE id = 2;
UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 3;
UPDATE tb_colaboradores SET salario = 2000.00 WHERE id = 4;
UPDATE tb_colaboradores SET salario = 1200.00 WHERE id = 5;


-- Retornando salario maior que 2000

SELECT * from tb_colaboradores where salario > 2000;

-- Retornando salario menor que 2000

SELECT * from tb_colaboradores where salario < 2000;

-- Atualizando valor da tabela

UPDATE tb_colaboradores SET funcao = "Demitido" where id = 2;



