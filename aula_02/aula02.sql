-- Criar o banco de dados
CREATE DATABASE db_quitanda;

-- Apagar o banco de dados
DROP DATABASE db_quitanda;

-- Começar a usar o banco de dados
USE db_quitanda;

-- Criar uma tabela com colunas
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    primary key(id)
);

-- Visualizar a tabela inteira
SELECT * FROM tb_produtos;

-- Inserindo elementos na tabela (o id eh auto incrementado, então não precisa inserí-lo)
INSERT INTO tb_produtos(nome, quantidade, preco) values ("tomate", 100, 8.80);
INSERT INTO tb_produtos(nome, quantidade, preco) values ("maçã", 20, 5.50);
INSERT INTO tb_produtos(nome, quantidade, preco) values ("banana", 30, 9.50);
INSERT INTO tb_produtos(nome, quantidade, preco) values ("pêra", 150, 12.90);

-- Buscas específicas de elementos
SELECT nome, quantidade FROM tb_produtos;
SELECT * FROM tb_produtos WHERE id = 1;
SELECT * FROM tb_produtos WHERE (preco > 7 AND quantidade > 20);

-- Desabilitando o modo de segurança, que bloqueia UPDATE e DELETE sem WHERE
SET SQL_SAFE_UPDATE = 0;

-- Atualizar um dado dentro da tabela
UPDATE tb_produtos SET preco = 5.00 WHERE id = 1;

-- Deletar elementos da tabela	
DELETE FROM tb_produtos WHERE id = 1;

-- Alterar as colunas da tabela
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);
ALTER TABLE tb_produtos ADD descricao varchar(255);
ALTER TABLE tb_produtos DROP descricao;
ALTER TABLE tb_produtos CHANGE nome nome_do_produto varchar(255);