create database db_construindo_vidas;


create table tb_categorias (
id bigint auto_increment primary key,
nome varchar(50) not null,
tipo varchar(50) not null
);

insert into tb_categorias (nome, tipo) 
values('Tintas', 'Materiais de Construção'),
	('Ferramentas', 'Materiais de Construção'),
	('Iluminação', 'Decoração'),
	('Pisos e Revestimentos', 'Materiais de Construção'),
	('Ferragens', 'Materiais de Construção');
       
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

select * from tb_produtos;

insert into tb_produtos (nome, descricao, preco, estoque, categoria_id)  
values('Tinta Acrílica Branca', 'Tinta acrílica para parede, acabamento fosco.', 49.99, 100, 1),
	('Martelo de Carpinteiro', 'Martelo de aço carbono com cabo de madeira.', 29.99, 80, 2),
	('Lâmpada LED 12W', 'Lâmpada LED de alta eficiência energética, luz branca.', 12.50, 50, 3),
	('Porcelanato Polido Bege', 'Porcelanato polido para revestimento de pisos, cor bege.', 69.99, 70, 4),
	('Dobradiça de Aço', 'Conjunto de dobradiças de aço para portas.', 7.99, '2026-01-31', 5),
	('Tinta Esmalte Sintético Preto Fosco', 'Tinta esmalte sintético para superfícies metálicas, acabamento fosco.', 39.99, 200, 1),
	('Serra Circular 7-1/4"', 'Serra circular elétrica para corte de madeira, 1800W.', 199.99, 45, 2),
	('Lustre Pendente Cromado', 'Lustre pendente para iluminação decorativa, acabamento cromado.', 89.99, 96, 3);

select * from tb_produtos where preco > 100.00;

select * from tb_produtos where preco between 70.00 and 150.00;

select * from tb_produtos where nome like "%C%";

select * 
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.id;

SELECT p.nome AS produto, p.descricao, p.preco, p.data_validade, c.nome AS categoria
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.categoria_id = c.id
WHERE c.nome IN ('Tintas');