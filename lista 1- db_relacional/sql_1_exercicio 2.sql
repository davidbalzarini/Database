create database db_ecommerce;
use db_ecommerce;

create table tb_livros(
id bigint(20) auto_increment,
nome varchar(80)not null,
autor varchar(80)not null,
genero varchar(30)not null,
paginas bigint(30) not null,
edicao bigint(30) not null,
estoque boolean not null,
preco decimal(10, 2),
primary key(id)
);

select * from tb_livros;

insert into tb_livros(nome, autor, genero, paginas, edicao, estoque, preco) values ("Jujutsu Kaisen volume um", "Gege Akutami", "Manga", 192, 2019, true, 40.00);
insert into tb_livros(nome, autor, genero, paginas, edicao, estoque, preco) values ("Jujutsu Kaisen volume dois", "Gege Akutami", "Manga", 192, 2019, true, 40.00);
insert into tb_livros(nome, autor, genero, paginas, edicao, estoque, preco) values ("Jujutsu Kaisen volume tres", "Gege Akutami", "Manga", 192, 2019, true, 40.00);
insert into tb_livros(nome, autor, genero, paginas, edicao, estoque, preco) values ("Jujutsu Kaisen volume quatro", "Gege Akutami", "Manga", 192, 2019, true, 40.00);

select * from tb_livros where preco < 500;