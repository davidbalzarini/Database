create database db_generation_game_online;
use db_generation_game_online;
create table tb_classes(
id bigint auto_increment,
nome varchar(30) not null,
tipo varchar(50) not null,
primary key(id)
);
insert into tb_classes(nome, tipo) values("mago", "mobilidade");
insert into tb_classes(nome, tipo) values("assassino", "explosão");
insert into tb_classes(nome, tipo) values("atirador", "dano por segundo");
insert into tb_classes(nome, tipo) values("mago", "explosão");
insert into tb_classes(nome, tipo) values("assassino", "mobilidade");
create table tb_personagens(
id bigint auto_increment,
nome varchar(50),
pontosdevida bigint,
desbloqueado boolean,
forca bigint,
id_classe bigint,
primary key(id),
foreign key(id_classe) references tb_classes(id)
);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("nackroth", 1000, true, 1500, 5);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("valhein", 1000, true, 1800, 3);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("krinknak", 500, false, 5000, 2);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("krixi", 1000, true, 1500, 1);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("zata", 1000, true, 600, 1);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("laville", 1000, true, 100, 3);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("wukong", 1000, true, 15000, 2);
insert into tb_personagens(nome, pontosdevida, desbloqueado, forca, id_classe) values ("zuka", 1000, true, 1300, 5);

select * from tb_personagens where forca > 2000;
select * from tb_personagens where forca > 1000 and forca < 2000;
select * from tb_personagens where nome like '%c%';
select tb_personagens.nome, tb_personagens.desbloqueado, tb_classes.nome from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.id_classe;
