create database db_rhcocacola

use db_rhcocacola;

CREATE TABLE tb_colaboradores (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    salario DECIMAL(6, 2),
    data_contratacao DATE
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_contratacao)
VALUES 
("Milena Semanaka", "Desenvolvedora Backend Jr", "Tecnologia da Informação", 3500.00, "2020-05-15"),
("Rebeca Brito", "Analista de RH", "Recursos Humanos", 2745.66, "2019-08-20"),
("Floco Borbo", "Gerente", "Vendas", 7000.00, "2022-01-29"),
("Brotinho", "Assistente Administrativo", "Administração", 1750.00, "2023-03-11"),
("Isis", "Analista Financeiro", "Financeiro", 1900.00, "2021-11-06");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 5;


