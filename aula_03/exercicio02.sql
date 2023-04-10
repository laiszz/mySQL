CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) not null,
    vegana boolean not null,
    primary key(id)
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    sabor varchar(255) not null,
    preco decimal(3,2) not null,
    borda varchar(255),
    tamanho varchar(255) not null,
    categorias_id bigint not null,
    PRIMARY KEY(id),
    CONSTRAINT fk_categoria FOREIGN KEY(categorias_id) REFERENCES tb_categorias (id)
);

ALTER TABLE tb_pizzas MODIFY preco decimal(6,2);

INSERT INTO tb_categorias(tipo, vegana) VALUES ("doce", true);
INSERT INTO tb_categorias(tipo, vegana) VALUES ("mista", true);
INSERT INTO tb_categorias(tipo, vegana) VALUES ("mista", false);
INSERT INTO tb_categorias(tipo, vegana) VALUES ("salgada", true);
INSERT INTO tb_categorias(tipo, vegana) VALUES ("salgada", false);

INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("calabresa", 69.9, "catupiry", "grande", 5);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("4 queijos", 55.9, null, "grande", 5);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("marguerita", 29.9, null, "pequena", 4);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("frango", 49.9, "catupiry", "media", 5);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("chocolate", 59.9, null, "grande", 1);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("brigadeiro", 39.9, "nutella", "media", 1);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("morango", 29.9, null, "pequena", 1);
INSERT INTO tb_pizzas(sabor, preco, borda, tamanho, categorias_id) VALUES ("meia 3 queijos meia chocolate", 59.9, null, "grande", 3);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "M%";
SELECT sabor, preco, tamanho FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;
SELECT sabor, preco, tamanho FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id WHERE tb_pizzas.categorias_id = 1;
