create database db_jogo;

use db_jogo;

create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
poder bigint not null,
primary key(id)
);

insert into tb_classes(classe, poder) values("Guerreiro", 4000), ("Mago", 5000),
("Lutador", 8000),("Arqueiros", 3000),("Atirador", 10000);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
altura decimal(4,2) not null,
raça varchar(255) not null,
genero varchar(255) not null,
classes_id bigint,
primary key(id),
foreign key(classes_id) references tb_classes(id)
);

insert into tb_personagens(nome, altura, raça, genero, classes_id) values
("Persefâni", 1.55, "Raposa", "Fêmea", 2 ),
("Carvo", 2.40, "Corvo", "Macho", 5),
("Trigue", 2.00, "Tigre", "Macho", 3),
("Felps", 0.50, "Rato", "Macho", 4),
("Jenny", 2.38, "Cobra", "Fêmea", 1),
("Riven", 1.80, "Humano", "Fêmea", 3),
("Ford", 2.00, "Gavião", "Fêmea", 5),
("Pietra", 1.50, "Coelho", "Fêmea", 2);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
select nome, tb_classes.poder from tb_personagens 
inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where poder > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
select nome, tb_classes.poder from tb_personagens 
inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where poder between 1000 and 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
select nome, tb_classes.poder from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where nome  like  "%c%";

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela 
tb_classes.*/
select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id;

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela 
tb_classes, onde traga apenas os personagens que pertençam a uma classe específica*/
select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classes_id where classe = "Mago";

