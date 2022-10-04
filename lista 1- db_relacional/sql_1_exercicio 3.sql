create database db_turma;
use db_turma;

create table tb_alunos(
id bigint(20) auto_increment,
nome varchar(80)not null,
nota decimal(10, 1)not null,
genero varchar(30)not null,
turma bigint(20) not null,
serie varchar(30) not null,
primary key(id)
);

select * from tb_alunos;

insert into tb_alunos(nome, nota, genero, turma, serie) values ("Raphael", 8.0, "Masculino", 1203, "Quinta");
insert into tb_alunos(nome, nota, genero, turma, serie) values ("Ricardo", 2.0, "Masculino", 1203, "Quinta");
insert into tb_alunos(nome, nota, genero, turma, serie) values ("David", 3.0, "Masculino", 1203, "Quinta");
insert into tb_alunos(nome, nota, genero, turma, serie) values ("Luiz", 5.0, "Masculino", 1203, "Quinta");

select * from tb_alunos where nota > 7.0;
select * from tb_alunos where nota < 7.0;