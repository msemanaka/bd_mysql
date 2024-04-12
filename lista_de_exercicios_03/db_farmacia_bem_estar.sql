CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(50)
);

INSERT INTO tb_categoria (nome, tipo) VALUES
('Medicamentos', 'Remédio'),
('Cosméticos', 'Beleza');

INSERT INTO tb_categoria (nome, tipo) VALUES
('Higiene pessoal', 'Higiene'),
('Mamãe e Bebê', 'Mamãe e Bebê'),
('Vitaminas e suplementos', 'Beleza');

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
	id_produtos INT AUTO_INCREMENT PrIMARY KeY,
    nome VARCHAR(50) NoT NuLL,
    descricao TEXT,
    preco DECIMAL(6,2),
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, descricao, preco, estoque, id_categoria) VALUES
('Paracetamol', 'Analgésico e Antitermico', 15.99, 55, 1),
('Ibuprofeno', 'Analgésico e Antitermico', 13.50, 20, 1),
('Bioré Make Up Remover', 'Óleo Demaquilante', 51.16, 55, 2),
('Fralda Descartável Infantil Huggies', 'Fralda Descartável Infantil', 79.99, 15, 4),
('Sabonete Glicerina Granado 90g', 'Limpeza da pele e Hidratação', 7.89, 100, 3),
('Vitamina C ACEVITON', 'Vitaminas e suplementação', 19.99, 18, 5),
('Hidratante Labial Nivea Ultra Hialurônico', 'Hidratação labial e Beleza', 28.79, 30, 2),
('Milnutri Premium Soja Danone 800g', 'Alimentação Infantil', 92.22, 45, 4);

SELECT * FROM tb_produtos WHERE preco < 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_categoria.nome, tb_produtos.nome, tb_categoria.tipo, tb_produtos.preco, tb_produtos.estoque
FROM tb_categoria INNER JOIN tb_produtos
ON tb_categoria.id_categoria = tb_produtos.id_categoria;

SELECT tb_categoria.nome, tb_produtos.nome, tb_categoria.tipo, tb_produtos.preco, tb_produtos.estoque
FROM tb_categoria INNER JOIN tb_produtos
ON tb_categoria.id_categoria = tb_produtos.id_categoria
WHERE tipo = 'Mamãe e Bebê';

Sinceramente eu não entendi direito esse segundo inner join.
