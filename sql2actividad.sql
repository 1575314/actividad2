create database db_pizzaria_legal;
use db_pizzaria_legal; 
create table tb_categorias(
id bigint auto_increment, 
sabor varchar(120) NOT NULL,
tamanho  boolean,
primary key(id));
insert into tb_categorias(sabor,tamanho)
values ('carnes',true);
insert into tb_categorias(sabor,tamanho)
values ('frios',true);
insert into tb_categorias(sabor,tamanho)
values ('vegetariana',true);
insert into tb_categorias(sabor,tamanho)
values ('doce',true);
create table tb_pizzas(
id bigint auto_increment,
nome varchar(100) not null,
descricao varchar (500),
quantidade int,
preco decimal(5.2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id));

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("calabresa","calabresa com cebola","50","35","1");
insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("margerita","tomate,aceitona,queixo","70","35","1");

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("frango","frango com catupiry","50","45","1");

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("lombo","lombo,queixo,aceitona","50","40","1");

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("romeo e julieta","goiaba com chocolate","50","30","1");

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("calabresa","calabresa com cebola","50","35","1");

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("banana chip","banana com chocolate","50","30","1");

insert into tb_pizzas (nome, descricao, quantidade, preco, categoria_id)
values("peperoni","peperoni, tomate,queixo ","50","50","1");

select * from tb_categorias;

select * from tb_pizzas;

select * from tb_pizzas WHERE preco > 45.00;

select * from tb_pizzas WHERE preco BETWEEN 50 AND 100;

select * from tb_pizzas WHERE nome LIKE "%C%";

select * from tb_produtos inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.sabor="doce";