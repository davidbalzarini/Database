create database db_saudeEbemestar;
use db_saudeEbemestar;
create table tb_categorias(
id bigint auto_increment,
Categoria varchar(255),
Doação boolean,
primary key(id)
);
create table tb_usuario(
id bigint auto_increment,
Nome varchar(255),
Usuário varchar(255),
Senha varchar(255),
Foto varchar(255),
primary key(id)
);
create table tb_produtos(
id bigint auto_increment,
Produto varchar(255),
Preço decimal(10, 2) default 0,
Disponibilidade boolean,
Reutilizável boolean,
categoria_id bigint,
usuario_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id),
foreign key(usuario_id) references tb_usuario(id)
);

insert into tb_categorias(Categoria, Doação) values
("Equipamento Médico Durável", true),
("Equipamento Médico Durável", false),
("Descartaveis", true),
("Descartaveis", false);

insert into tb_usuario(Nome, Usuário, Senha, Foto) values
("david", "david@gmail.com", "123", "jpeg");

insert into tb_produtos(Produto, Preço, Disponibilidade, Reutilizável, categoria_id, usuario_id) values
("Cadeira de rodas", 59.90, true, true, 2, 1),
("Muleta", Preço, true, true, 1, 1),
("Luvas cirúrgicas", Preço, true, false, 3, 1),
("Luvas cirúrgicas", 9.90, true, false, 4, 1);

select tb_produtos.Produto, tb_produtos.Preço, tb_produtos.Disponibilidade, tb_produtos.Reutilizável, tb_usuario.Nome, tb_usuario.Foto, tb_categorias.Categoria, tb_categorias.Doação from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
inner join tb_usuario on tb_usuario.id = tb_produtos.usuario_id;



