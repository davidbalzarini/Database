create database db_rh;
use db_rh;
create table tb_funcionarios(
id bigint(20) auto_increment,
nome varchar(20),
idade bigint(3) not null,
cpf bigint(11) not null,
cadastrado boolean not null,
salario decimal(10, 2) not null,
primary key(id)
);

select * from tb_funcionarios;

insert into tb_funcionarios(nome, idade, cpf, cadastrado, salario) values ("Raphael", 24, 14186036624, true, 5000.00);
insert into tb_funcionarios(nome, idade, cpf, cadastrado, salario) values ("Ricardo", 27, 12185036724, true, 100.00);
insert into tb_funcionarios(nome, idade, cpf, cadastrado, salario) values ("David", 24, 66183036622, true, 10000.00);
insert into tb_funcionarios(nome, idade, cpf, cadastrado, salario) values ("Liza", 29, 32186734624, true, 12000.00);
insert into tb_funcionarios(nome, idade, cpf, cadastrado, salario) values ("Renato", 26, 2086236674, true, 200.00);
insert into tb_funcionarios(nome, idade, cpf, cadastrado, salario) values ("Eltin", 32, 9472859274, true, 900.00);

select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000
