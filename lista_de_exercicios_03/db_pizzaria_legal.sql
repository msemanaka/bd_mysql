CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50),
    descricao TEXT
);

INSERT INTO tb_categorias (nome, tipo, descricao) VALUES
('Salgadas', 'Salgadas', 'Pizzas com recheios salgado'),
('Veggie', 'Veganas', 'Pizzas veganas'),
('Doces', 'Doces', 'Pizzas com recheios doces');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
	id_produtos INT AUTO_INCREMENT PrIMARY KeY,
    nome VARCHAR(50) NoT NuLL,
    descricao TEXT,
    preco DECIMAL(6,2),
    ingredientes TEXT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome, descricao, preco, ingredientes, id_categoria) VALUES
('Chocolate com Morango', 'Chocolate, morangos e leite condensado', 47.00, 'Chocolate, morangos e leite condensado', 3),
('Quatro Queijos', 'Molho de tomate, queijo mussarela, queijo gorgonzola, queijo parmesão e queijo provolone', 85.00, 
'Molho de tomate, queijo mussarela, queijo gorgonzola, queijo parmesão e queijo provolone', 1),
('Cogumelo', 'Cogumelos, queijo vegano, tomate', 47.00, 'Molho de tomate, cogumelo portobello, mussarela, tomate cereja, 
molho barbecue, orégano e azeite', 2),
('A Verde', 'Pizza verde com molho pesto', 42.00, 'Base de pesto de rúcula, abobrinha frita, mussarela, parmesão e azeite', 2),
('Frango com Catupiry', 'Molho de tomate, queijo, frango desfiado, catupiry e azeitonas', 68.00, 'Molho de tomate, queijo, 
frango desfiado, catupiry e azeitonas', 1),
('Nutella com Pistache', 'Nutella com Pistache', 46.00, 'Creme de avelã com chocolate feito na casa, coberto com pistache', 3),
('Calabresa', 'Calabresa acebolada', 51.00, 'Calabresa fatiada, azeitona, cebola, molho de tomate, orégano', 1),
('Camarão com Catupiry', 'Camarão com Catupiry', 78.00, 'Mini camarão, azeitona verde, molho de tomate, orégano, requeijão cremoso', 1);

SELECT * FROM tb_pizzas WHERE preco < 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_categorias.nome, tb_pizzas.nome, tb_categorias.tipo, tb_pizzas.preco, tb_pizzas.ingredientes
FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.id_categoria = tb_pizzas.id_categoria;

SELECT tb_categorias.nome, tb_pizzas.nome, tb_categorias.tipo, tb_pizzas.preco, tb_pizzas.ingredientes
FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.id_categoria = tb_pizzas.id_categoria
WHERE tipo = 'Doces';