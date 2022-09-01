CREATE DATABASE db_loja;

USE db_loja;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(6,2),
validade date,
categoria varchar(255),
primary key(id)
);

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Pneu", 199.99, null, "Carro");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Roda", 159.99, null, "Carro");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Farol", 69.99, null, "Carro");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Limpa vidros", 19.00, "2025-10-20", "Limpeza");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Vassoura", 25.99, null, "Limpeza");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Rodo", 22.00, null, "Limpeza");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Cama de gato", 79.99, null, "Animal");

INSERT INTO tb_produtos(nome, preco, validade, categoria) 
VALUES ("Cama de cachorro", 86.49, null, "Animal");


-- Retornando valor maior que 2000

SELECT * from tb_produtos where preco > 500;

-- Retornando salario menor que 2000

SELECT * from tb_produtos where preco < 500;

-- Atualizando valor da tabela

UPDATE tb_produtos SET preco = 149.99 where id = 2;



