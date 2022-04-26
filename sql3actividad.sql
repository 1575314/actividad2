create database db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
create table tb_categorias(
id bigint auto_increment, 
nome varchar(120) NOT NULL,
ativa boolean,
primary key(id));
insert into tb_categorias(nome,ativa)
values('medicamentos',true);
insert into tb_categorias(nome,ativa)
values('medicamentos controlados',true);
insert into tb_categorias(nome,ativa)
values ('beleza',true);
insert into tb_categorias(nome,ativa)
values ('suplementos',true);

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
descricao varchar (500),
quantidade int,
preco decimal(8.2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id));
insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values ("ibuprofeno", "dor de cabeça", 140, 20, 1);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values  ("Paroxetina", "antidepressivo", 122, 50, 2);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values ("Desodorante rexona", "higine pessoal", 190, 15, 3);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values ("Esmalte Impala", "esmalte", 144, 5, 4);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values ("Centrum", "vitamina", 111, 150, 5);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values  ("Dorflex", "relaxante muscular", 100, 20, 1);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values ("Topiramato", "estabiliza humor", 177, 60, 2);

insert into tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
values ("Shampoo Pantene", "cabelos", 124, 20, 3);

select * from tb_produtos;

select * from tb_categorias;

select * from tb_produtos WHERE preco > 50.00;

select * from tb_produtos WHERE preco BETWEEN 5 AND 60;

select * from tb_produtos WHERE nome LIKE "%C%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.nome="beleza";

