create table tb_categorias (
    id bigint auto_increment primary key,
    nome_categoria VARCHAR(50),
    descricao VARCHAR(255)
);

insert into tb_categorias (nome_categoria, descricao) values
('Salgada', 'Pizzas salgadas com diversos sabores'),
('Doce', 'Pizzas doces com diversos recheios'),
('Vegetariana', 'Pizzas com ingredientes exclusivamente vegetarianos'),
('Gourmet', 'Pizzas com ingredientes selecionados e preparo artesanal'),
('Vegana', 'Pizzas com ingredientes exclusivamente veganos');

create table tb_pizzas (
    id bigint auto,
    nome VARCHAR(100),
    preco DECIMAL(8, 2),
    tamanho VARCHAR(20),
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserir 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, id_categoria) VALUES
('Margarita', 40.00, 'Média', 'Molho de tomate, muçarela, manjericão', 1),
('Calabresa', 35.00, 'Grande', 'Molho de tomate, calabresa, cebola, muçarela', 1),
('Quatro Queijos', 50.00, 'Grande', 'Molho de tomate, muçarela, parmesão, gorgonzola, catupiry', 1),
('Brigadeiro', 30.00, 'Pequena', 'Brigadeiro, granulado de chocolate', 2),
('Banana com Canela', 35.00, 'Média', 'Banana, canela, açúcar, leite condensado', 2),
('Marguerita Vegana', 45.00, 'Grande', 'Molho de tomate, queijo vegano, manjericão', 5),
('Vegetariana Especial', 55.00, 'Grande', 'Molho de tomate, palmito, tomate, pimentão, azeitonas', 3),
('Gourmet de Frutos do Mar', 70.00, 'Grande', 'Molho de tomate, camarão, lula, mexilhões, queijo gorgonzola', 4);

-- SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id WHERE tb_categorias.nome_categoria = 'Doce';


