/*create table tb_marcas(
  id bigint(5) auto_increment,
  nome varchar(20) not null,
  ativo boolean,
  primary key (id)
  );*/
  /*create table tb_produtos(
    id bigint(5) auto_increment,
    nome varchar(50) not null,
    preco decimal(10, 10) not null,
    id_marca bigint not null,
    primary key (id),
    foreign key(id_marca) references tb_marcas(id)
    );*/
   /* select * from tb_marcas*/
    insert into tb_marcas(nome, ativo) value ("Adidas", false);
    select * from tb_marcas;