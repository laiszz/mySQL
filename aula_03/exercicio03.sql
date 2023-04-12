CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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

INSERT INTO tb_categorias (nome, descricao) VALUES
  ('Medicamentos', 'Produtos para tratamento de saúde'),
  ('Higiene Pessoal', 'Produtos para cuidados pessoais'),
  ('Cosméticos', 'Produtos para beleza e estética'),
  ('Suplementos', 'Produtos para suplementação alimentar'),
  ('Mamãe e Bebê', 'Produtos para gestantes e bebês');

INSERT INTO tb_produtos (nome, descricao, valor, estoque, categorias_id) VALUES
  ('Dipirona', 'Analgésico e antitérmico', 4.99, 50, 1),
  ('Sabonete líquido', 'Para higiene diária', 10.50, 30, 2),
  ('Máscara facial', 'Com efeito rejuvenescedor', 69.90, 10, 3),
  ('Vitamina C', 'Para fortalecimento imunológico', 29.99, 20, 4),
  ('Fralda descartável', 'Para recém-nascidos', 35.90, 50, 5),
  ('Shampoo', 'Para cabelos oleosos', 12.99, 40, 2),
  ('Protetor solar', 'FPS 50, resistente à água', 42.00, 25, 3),
  ('Colágeno', 'Para firmeza da pele', 55.00, 15, 4);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';
