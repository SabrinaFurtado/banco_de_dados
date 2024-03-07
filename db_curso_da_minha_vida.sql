create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias (
id bigint auto_increment primary key,
nome varchar(50) not null,
descricao varchar(255)
);

insert into tb_categorias (nome, descricao)
values ('Programação', 'Cursos relacionados a linguagens de programação.'),
	('Design', 'Cursos relacionados a design gráfico e web design.'),
	('Negócios', 'Cursos relacionados a empreendedorismo e gestão de negócios.'),
	('Idiomas', 'Cursos de idiomas estrangeiros.'),
	('Saúde e Bem-Estar', 'Cursos relacionados a saúde física e mental.');
       
select * from tb_categorias;

create table tb_cursos (
curso_id bigint auto_increment primary key,
nome varchar(50) not null,
descricao varchar(255),
preco float,
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);

select * from tb_cursos;

insert into tb_cursos (nome, descricao, preco, categoria_id)
values('Introdução à Programação em Java', 'Curso introdutório sobre Java para iniciantes.', 499.99, 1),
('Web Design Fundamentals', 'Curso abrangente sobre os fundamentos do design web.', 599.99, 2),
('Gestão de Projetos', 'Curso prático sobre gerenciamento de projetos.', 799.99, 3),
('Inglês Intermediário', 'Curso de inglês para alunos com conhecimentos básicos.', 299.99, 4),
('Nutrição e Alimentação Saudável', 'Curso sobre nutrição e hábitos alimentares saudáveis.', 399.99, 5),
('Desenvolvimento Android', 'Curso avançado sobre desenvolvimento de aplicativos Android.', 899.99, 1),
('Photoshop Avançado', 'Curso avançado sobre técnicas avançadas de edição no Photoshop.', 699.99, 2),
('Finanças Pessoais', 'Curso sobre gestão financeira pessoal e investimentos.', 999.99, 3);


select * from tb_cursos where preco > 500.00;

select * from tb_cursos where preco between 600.00 and 1000.00;

select * from tb_cursos where nome like "%J%";

select * 
from tb_categorias inner join tb_cursos on tb_categorias.id = tb_cursos.id;

SELECT tb_cursos.*, tb_categorias.nome AS categoria
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Java';

