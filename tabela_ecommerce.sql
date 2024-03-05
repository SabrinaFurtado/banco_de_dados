create database db_ecommerce;

create table tb_produtos(
id bigint auto_increment primary key, 
nome varchar(255) not null,
preco decimal(10,2) not null,
descricao text,
categoria varchar(50)
);

insert into tb_produtos(nome, preco, descricao, categoria)
values("Fone de ouvido bluetoooth", 50.00, "Fone de ouvido com conexão bluetooth", "Áudio");
insert into tb_produtos(nome, preco, descricao, categoria)
values("Caixa de Som", 350.00, "Caixa de som amplificada ", "Áudio");
insert into tb_produtos(nome, preco, descricao, categoria)
values("Tablet", 800.00, "Tablet 10 polegadas com android", "Dispositivos Móveis");
insert into tb_produtos(nome, preco, descricao, categoria)
values("Celular", 2500.00, "Smartfone android, tela de 6.5 polegadas, câmera...", "Dispositivos Móveis");
insert into tb_produtos(nome, preco, descricao, categoria)
values("Notebook", 3500.00, "Notebook 15 polegadas, core i7.... ", "Dispositivos Móveis");
insert into tb_produtos(nome, preco, descricao, categoria)
values("PlayStation", 4000.00,"Console de videogame de última geração, com gráficos de alta qualidade e recursos avançados", "Console de Video Game");
insert into tb_produtos(nome, preco, descricao, categoria)
values("Monitor de Computador", 1000.00, "Monitor com alta resolução e desempenho para uso com desktops e... ", "Vídeo");
insert into tb_produtos(nome, preco, descricao, categoria)
values("Câmera Fotografica", 800.00, "Câmera digital, para capturar fotos e vídeos de alta qualidade.", "Vídeo");

select * from tb_produtos;

select * from tb_produtos where preco > 500.00;

select * from tb_produtos where preco < 500.00;

update tb_produtos set preco = 400.00 where id = 2;