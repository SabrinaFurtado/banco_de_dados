create database db_rh;


create table tb_colaboradores(
 id bigint auto_increment,
 nome_completo varchar(255) not null,
 cargo varchar(255),
 salario float,
 data_admissao date,
 primary key(id)
);

insert into tb_colaboradores(nome_completo, cargo, salario, data_admissao)
values("Sabrina Furtado", "Desenvolvedora Java", 6.000, "2024-02-05");
insert into tb_colaboradores(nome_completo, cargo, salario, data_admissao)
values("João da Silva", "Desenvolvedor Java Jr", 1.800, "2023-06-10"); 
insert into tb_colaboradores(nome_completo, cargo, salario, data_admissao)
values("Ana Costa", "Gerente", 8.000, "2018-06-05");
insert into tb_colaboradores(nome_completo, cargo, salario, data_admissao)
values("Maria Clara", "Diretor(a) Administrativa ", 10.000, "2018-02-05"); 
insert into tb_colaboradores(nome_completo, cargo, salario, data_admissao)
values("Valentina Santos ", "Estagiária", 1.200, "2022-02-06"); 

select * from tb_colaboradores where salario > 2.000;

select * from tb_colaboradores where salario < 2.000;

update tb_colaboradores set salario = 2.000 where id = 2;

select * from tb_colaboradores;