drop database db_pizzaria_legal;
create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
id bigint auto_increment,
estado varchar(50),
salgado boolean,
primary key(id)
);
insert into tb_categoria(estado, salgado) values ("pré feita", true);
insert into tb_categoria(estado, salgado) values ("pronta", true);
insert into tb_categoria(estado, salgado) values ("pré feita", false);
insert into tb_categoria(estado, salgado) values ("pronta", false);
insert into tb_categoria(estado, salgado) values ("para viagem", true);
select * from tb_categoria;
create table tb_pizzas(
id bigint auto_increment,
tamanho varchar(20),
molhoextra boolean,
sabor varchar(20),
azeitona boolean,
preco decimal,
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("mini", true, "calabresa", false, 9.90, 5);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("familia", true, "mussarela", true, 39.9,  5);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("média", true, "4 queijos", false, 29.9, 1);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("mini", false, "sorvete", false, 45.9, 4);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("grande", true, "portuguesa", true, 45.9, 2);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("média", false, "chocolate", false,45.9, 3);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("grande", true, "calabresa", true, 35.9, 5);
insert into tb_pizzas(tamanho, molhoextra, sabor, azeitona,preco, id_categoria) values ("mini", true, "filé mignon", false, 59.9, 5);

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco > 50 and preco < 100;
select * from tb_pizzas where preco > 45;
select * from tb_pizzas where sabor like "%m%";
select tb_categoria.estado, tb_pizzas.tamanho, tb_pizzas.sabor, tb_pizzas.preco from tb_pizzas
inner join tb_categoria on tb_categoria.id = tb_pizzas.id_categoria

