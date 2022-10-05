drop database db_construindo_vidas;
create database db_construindo_vidas;
use db_construindo_vidas;
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
disponivel boolean,
primary key(id)
);
create table tb_produtos(
id bigint auto_increment,
tipo varchar(255),
preco decimal,
localizacao varchar(255),
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);
insert into tb_categoria(tipo, disponivel) values
("apartamento", true),
("kitnet", true),
("casa", true),
("casa de veraneio", true),
("sala comercial", true);

insert into tb_produtos(tipo, preco, localizacao, id_categoria) values
("Aluguel", 400, "Pedra de Guaratiba", 2),
("Aluguel", 2000, "Recreio", 1),
("Aluguel", 6000, "Barra da Tijuca", 3),
("Aluguel", 900, "Niterói", 5),
("Venda", 2000000, "Angra dos reis", 4),
("Venda", 8900000, "Leblon", 1),
("Venda", 200000, "Santa Teresa", 2),
("Venda", 5000000, "Garatucaia", 4);

select tb_produtos.tipo, tb_produtos.preco, tb_produtos.localizacao, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.preco > 100000;
select tb_produtos.tipo, tb_produtos.preco, tb_produtos.localizacao, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.preco > 70000 and tb_produtos.preco < 150000;
select tb_produtos.tipo, tb_produtos.preco, tb_produtos.localizacao, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_categoria.tipo like "%c%";

