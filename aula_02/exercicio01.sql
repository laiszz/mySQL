CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    nis varchar(255) not null,
    cargo varchar(255) not null,
	departamento varchar(255) not null, 
    salario decimal(6,2) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, nis, cargo, departamento, salario) VALUES ("Lais Sales", "3213", "Assistente", "Vendas", 1800.00);
INSERT INTO tb_colaboradores(nome, nis, cargo, departamento, salario) VALUES ("Maria", "3214", "Temporária", "Vendas", 1300.00);
INSERT INTO tb_colaboradores(nome, nis, cargo, departamento, salario) VALUES ("João", "3215", "Sênior", "Caixa", 3500.00);
INSERT INTO tb_colaboradores(nome, nis, cargo, departamento, salario) VALUES ("Beatriz", "3216", "Assistente", "RH", 2500.00);
INSERT INTO tb_colaboradores(nome, nis, cargo, departamento, salario) VALUES ("Rodrigo", "3217", "Gerente", "Geral", 5500.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 2;