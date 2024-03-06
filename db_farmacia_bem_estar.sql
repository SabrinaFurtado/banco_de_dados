create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
id bigint auto_increment primary key,
nome varchar(50) not null,
descricao varchar(255)
);

insert into tb_categorias (nome, descricao)
values ('Medicamentos', 'Medicamentos diversos'),
       ('Perfumaria', 'Produtos de perfumaria em geral'),
       ('Vitaminas', 'Multivitaminicos e Polivitaminicos de várias marcas'),
	   ('Higiene Pessoal', 'Produtos de higiene pessoal, como sabonetes e shampoos'),
       ('Cuidados com a Pele', 'Produtos para cuidados específicos da pele, como cremes e loções');
       
select * from tb_categorias;

create table tb_produtos (
id bigint auto_increment primary key,
nome varchar(50),
descricao varchar(255),
preco float,
estoque int,
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_produtos (nome, descricao, preco, estoque, categoria_id)
values('Paracetamol', 'Analgésico e antipirético', 9.99, 100, 1),
	('Dipirona', 'Analgésico e antipirético', 8.50, 80, 1),
	('Shampoo', 'Shampoo anticaspa', 15.99, 50, 2),
	('Perfume Hugo', 'Fragrância masculina', 89.99, 20, 2),
	('Protetor Solar', 'Protetor solar FPS 50', 29.99, 30, 5),
	('Vitamina C ', 'Suplemento vitamínico', 25.50, 40, 3);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 60.00;

select * from tb_produtos where nome like "%C%";

select * 
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.id;

