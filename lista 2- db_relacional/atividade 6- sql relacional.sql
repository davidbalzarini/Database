create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;
create table tb_categoria(
id bigint auto_increment,
vertente varchar(255),
vagasabertas boolean,
primary key(id)
);
create table tb_cursos(
id bigint auto_increment,
nome varchar(250),
preco decimal(10, 2),
tipo varchar(255),
id_categoria bigint,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_categoria(vertente, vagasabertas) values
("idiomas", true),
("programação", true),
("administração", true),
("arquitetura", true),
("meidcina", true);

insert into tb_cursos(nome, preco, tipo, id_categoria) values
("curso de inglês", 2000, "Venda", 1),
("JavaScript em 3 semanas", 500, "Venda", 2),
("Administre sua vida", 600, "Venda", 3),
("arquitetando sua casa", 2000, "Venda", 4),
("a cirurgia de milhões", 30000, "Venda", 5),
("fluency week", 0, "semana gratis para vender o curso", 1),
("usando python para automatizar tudo", 5000, "Venda", 2),
("administração em 5 dias", 2000, "Venda", 3);

select tb_cursos.nome, tb_cursos.preco, tb_cursos.preco, tb_cursos.tipo from tb_cursos
inner join tb_categoria on tb_categoria.id = tb_cursos.id_categoria
where tb_cursos.preco > 500;
select tb_cursos.nome, tb_cursos.preco, tb_cursos.preco, tb_cursos.tipo from tb_cursos
inner join tb_categoria on tb_categoria.id = tb_cursos.id_categoria
where tb_cursos.preco > 600 and tb_cursos.preco < 1000;
select tb_cursos.nome, tb_cursos.preco, tb_cursos.preco, tb_cursos.tipo from tb_cursos
inner join tb_categoria on tb_categoria.id = tb_cursos.id_categoria
where tb_cursos.nome like "%j%";