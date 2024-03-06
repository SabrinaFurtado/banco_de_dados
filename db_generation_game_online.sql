create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
id bigint auto_increment primary key,
personagem varchar (50),
tipo varchar(50),
nivel int,
vida int
);

insert into tb_classes (personagem, tipo, nivel, vida)
values ("Guerreiro", "Lutador", 1, 5),
       ("Mago", "Arcano", 1, 5),
       ("Arqueiro", "Atirador", 1, 5);


create table tb_personagens (
id bigint auto_increment primary key,
nome varchar(50),
ataque int,
forca int,
defesa int
);

insert into tb_personagens (nome, ataque, forca, defesa)
values ("Aurora: Guardiã da Luz", 5000, 4000, 3000),
	   ("Drakon:Lorde das Sombras ", 2500, 2500, 1500),
	   ("Lyra: Guerreira Celestial", 1000, 1900, 1800),
	   ("Fenrir: O berserker ", 1700, 5000, 3000);

alter table tb_personagens add column tipo varchar(50);

alter table tb_personagens
add column id_classe bigint,
add foreign key (id_classe) references tb_classes(id);

select * from tb_classes;

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * 
from tb_personagens inner join tb_classes on tb_personagens.id = tb_classes.id;

select * from tb_personagens inner join tb_classes on tb_personagens.id = tb_classes.id
where tb_classes.tipo = "Lutador";

