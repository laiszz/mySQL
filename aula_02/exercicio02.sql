CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(6,2) not null,
    categoria varchar(255) not null,
	data_validade date, 
    quantidade_estoque int not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Margarina", 12.90, "Laticíneos", "2023-05-26", 50);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Pão Francês", 10.90, "Panificadora", "2023-05-27", 10);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Presunto", 25.90, "Frios", "2023-05-26", 20);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Queijo Mussarela", 32.90, "Frios", "2023-05-26", 20);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Café", 9.90, "Cafeinados", "2023-05-26", 100);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Leite", 5.90, "Leites", "2023-05-26", 150);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Açúcar", 15.90, "Variados", "2023-05-26", 30);
INSERT INTO tb_produtos(nome, preco, categoria, data_validade, quantidade_estoque) VALUES ("Notebook", 4999.90, "Eletrônicos", null, 80);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 3500.00 WHERE id = 8;