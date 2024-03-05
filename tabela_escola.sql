create database db_escola;

create table tb_alunos(
id bigint auto_increment primary key,
nome varchar(255),
ano int,
turma char(1),
nota_final float
);

insert into tb_alunos(nome, ano, turma, nota_final)
values ("Sabrina Furtado", 9, "B", 10.00);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Maria Joana", 9, "B", 9.50);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Joao Batista", 7, "C",7.00);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Enzo Camargo", 6, "A", 5.00);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Pedro Sousa", 6, "B", 6.50);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Ana Luiza", 9, "A", 10.00);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Leticia Moura", 8, "B", 7.00);
insert into tb_alunos(nome, ano, turma, nota_final)
values ("Nicolas Santos", 6, "B", 10.00);

select * from tb_alunos;

select * from tb_alunos where nota_final > 7.00;

select * from tb_alunos where nota_final <= 7.00;

update tb_alunos set nota_final = 9.00 where id = 7;
