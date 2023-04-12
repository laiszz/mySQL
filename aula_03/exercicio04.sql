CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    primary key(id)
);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    valor decimal(8,2) not null,
    estoque int not null,
    categorias_id bigint not null,
    PRIMARY KEY(id),
    CONSTRAINT fk_categoria FOREIGN KEY(categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES 
('Carnes vermelhas', 'Categorias de carnes vermelhas'),
('Carnes brancas', 'Categorias de carnes brancas'),
('Peixes', 'Categorias de peixes'),
('Legumes', 'Categorias de legumes'),
('Frutas', 'Categorias de frutas');

INSERT INTO tb_produtos (nome, descricao, valor, estoque, categorias_id) VALUES 
('Picanha', 'Corte nobre da carne bovina', 65.50, 50, 1),
('Linguiça', 'Produto defumado e temperado', 18.90, 80, 1),
('Frango', 'Corte de frango sem osso', 9.90, 100, 2),
('Salsicha', 'Produto industrializado em embalagem a vácuo', 5.50, 120, 2),
('Alcatra', 'Corte de carne bovina macio e suculento', 89.90, 30, 1),
('Pernil', 'Corte de carne suína', 39.90, 60, 1),
('Tomate', 'Produto fresco, rico em nutrientes', 4.99, 150, 5),
('Cenoura', 'Produto fresco, fonte de vitamina A', 3.50, 200, 4);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = 'Frutas';