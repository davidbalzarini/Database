drop database db_farmacia_bem_estar;
create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table tb_categoria(
id bigint auto_increment,
ativo boolean,
tipo varchar(50),
primary key(id)
);
insert into tb_categoria(ativo, tipo) values
(true, "gripe"),
(true, "rotina"),
(true, "tarja preta"),
(true, "conveniencia"),
(true, "infantil"),
(true, "saúde sexual");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(10, 2),
receita boolean,
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);
insert into tb_produtos(nome, preco, receita, id_categoria) values
("Benegripe", 10, false, 1),
("bala halss", 3.5, false, 4),
("redoxon", 6.9, false, 5),
("Alprazolam", 55.4, true, 3),
("dorflex", 11.99, false, 2),
("Fralda", 29.90, false, 5),
("Barrinha de cereal", 9.90, false, 4),
("Jountex preservativo", 9.90, false, 6);

select tb_produtos.nome, tb_produtos.preco, tb_produtos.receita, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.preco > 50;
select tb_produtos.nome, tb_produtos.preco, tb_produtos.receita, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.preco > 5 and tb_produtos.preco < 60;
select tb_produtos.nome, tb_produtos.preco, tb_produtos.receita, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.nome like "%c%";





