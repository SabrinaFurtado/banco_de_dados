create database db_cidade_das_carnes;


create table tb_categorias (
id bigint auto_increment primary key,
tipo varchar(50) not null,
descricao varchar(255)
);

insert into tb_categorias (tipo, descricao)
values ('Bovino','Carne de Boi'),
       ('Peixes','Carne de Peixe'),
       ( 'Suíno','Carne de Porco'),
	   ('Processados', 'Carnes processadas'),
       ('Frango', 'Carne de Frango');
       
select * from tb_categorias;

create table tb_produtos (
id bigint auto_increment primary key,
nome varchar(50),
descricao varchar(255),
preco float,
data_validade date,
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, preco, data_validade, categoria_id) 
VALUES 
('Coxão Mole', 'Carne macia e suculenta ideal para grelhados e assados.', 39.99, '2024-03-10', 1),
('Patinho', 'Carne magra e versátil, ótima para preparações diversas.', 28.50, '2024-03-08', 1),
('Tilápia', 'Peixe de água doce com carne branca e delicada.', 32.99, '2024-03-15', 2),
('Lombo', 'Corte suíno com pouca gordura, perfeito para assados.', 29.99, '2024-03-10', 3),
('Salsicha', 'Produto embutido feito com carnes selecionadas.', 9.99, '2024-03-30', 4),
('Linguiça Toscana', 'Saborosa linguiça temperada com ervas.', 25.50, '2024-03-12', 4),
('Coxinha da Asa', 'Parte suculenta e saborosa do frango.', 20.50, '2024-03-24', 5),
('Peito de Frango sem osso', 'Peito de frango sem osso, ideal para diversas preparações.', 28.50, '2024-03-29', 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 150.00;

select * from tb_produtos where nome like "%C%";

select * 
from tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.id;

SELECT p.nome AS produto, p.descricao, p.preco, p.data_validade, c.nome AS categoria
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c ON p.categoria_id = c.id
WHERE c.nome IN ('Bovino');