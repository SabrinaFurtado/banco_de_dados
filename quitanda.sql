CREATE TABLE td_categorias (
id bigint auto_increment primary key,
descricao VARCHAR(255) NOT NULL);

SELECT * FROM db_quitanda, td_categorias;

INSERT INTO td_categorias (descricao)
VALUES ("Fruta"),("Verduras"), ("Legumes"), ("Temperos"), ("Ovos"), ("Outros");
