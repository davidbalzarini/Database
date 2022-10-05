create database db_cidade_das_carnes;
use db_cidade_das_carnes;
create table tb_categoria(
id bigint not null auto_increment,
tipo varchar(255),
ativo boolean,
primary key(id)
);
insert into tb_categoria(tipo, ativo) values
("carne bovina", true),
("carne suína", true),
("carne de frango", true),
("peixe", true);
create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255),
preco decimal(10, 2),
id_categoria bigint,
marca varchar(255) default('Não identificada'),
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);
insert into tb_produtos(nome, preco, id_categoria, marca) values
("sobrecoxa", 18.99, 3, "Sadia" ),
("picanha", 38.99, 1,  "Friboi"),
("Tilapia", 88.99, 4, ""  ),
("Patinho", 29.99, 1,  "Friboi"),
("Linguiça", 18.99, 2,  "Seara"),
("Bacon", 19.99, 1,  "Perdigão"),
("Maminha", 25.99, 1,  "Friboi");

select tb_produtos.nome, tb_produtos.preco, tb_produtos.marca, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.preco > 50;
select tb_produtos.nome, tb_produtos.preco, tb_produtos.marca, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.preco > 50 and tb_produtos.preco < 150;
select tb_produtos.nome, tb_produtos.preco, tb_produtos.marca, tb_categoria.tipo from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_produtos.nome like "%c%";




