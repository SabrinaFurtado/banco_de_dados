CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("Tomate", 100, "2023-12-15", 8.00),
("Maçã", 20, "2023-12-15", 5.00),
("Laranja", 50, "2023-12-15", 10.00),
("Banana", 200, "2023-12-15", 12.00),
("Uva", 1200, "2023-12-15", 30.00),
("Pêra", 500, "2023-12-15", 2.99);

--  indica o critério, aqui seria id igual a 1
SELECT * FROM tb_produtos WHERE id = 1;

-- mostra apenas o nome dos produtos
SELECT nome FROM tb_produtos;

-- mostra apenas produtos que tem valor maior que 5.00
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- mostra produtos que tem valor maior que 5 e quantidade menor que 100
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

ALTER TABLE td_produtos add categoriaId bigint;

ALTER TABLE td_produtos add constraint fk_produtos_categoria
 foreign key (categoria) references td_categorias (id);

select * from td_produtos

