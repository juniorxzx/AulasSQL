-- criando o banco de dados
create database db_quitanda;

-- selecionando o banco de dados
use db_quitanda;

-- criando tabela de categorias
create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key(id)
);

-- inserindo dados na tabela
insert into tb_categorias(descricao) values ("Fruta"), ("Verduras"),("Legumes"),("Temperos"),("Ovos"),("Outros");

-- vendo a tabela
select * from tb_categorias;

-- criando a tabela de produtos
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int null,
dtvalidade date, 
preco decimal(10,2),
categoria_id bigint,
primary key(id),
-- criando a chave estrangeira referenciando o id da tabela categorias
foreign key(categoria_id) references tb_categorias(id)
);

-- ver produtos ordenados por nome
select * from tb_produtos order by nome;

-- ver produto por nome, mas por ordem decrescente
select * from tb_produtos order by nome desc;

/*Operadore IN e BETWEEN*/

-- IN - o preço deve ser 5,10 e 15
select * from tb_produtos where preco in (5,10,15);

-- BETWEEN - o preço deve estar entre 5 e 15
select * from tb_produtos where preco between 5 and 15;

-- localizar produtos com LIKE
select * from tb_produtos where nome like "ra%"; -- no começo tem que ter ra
select * from tb_produtos where nome like "%ra"; -- no final ter que ter ra
select * from tb_produtos where nome like "%ra%"; -- no meio tem que ter ra

/*Operadores matematicos*/
-- conte o total de produtos que tenha na tb_produtos
select count(*) as total_produtos from tb_produtos; -- exceto nulos

-- soma
select sum(preco) from tb_produtos;

-- media
select avg(preco) from tb_produtos;
-- recebe a media e e agrupa pela categoria_id
select categoria_id, avg(preco) as media_preco from tb_produtos group by categoria_id;

-- mostra o maior preço
select max(preco) from tb_produtos;

-- mostra o menor preço
select min(preco) from tb_produtos;

/*Operador JOIN*/

-- Inner Join - mostra somente o que está relacionado
select nome,preco,quantidade, tb_categorias.descricao from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

-- Left Join - mostra o que está relacionado e o que não está relacionado
select nome,preco,quantidade, tb_categorias.descricao from tb_produtos left join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

-- Right Join 
select nome,preco,quantidade, tb_categorias.descricao from tb_produtos right join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

