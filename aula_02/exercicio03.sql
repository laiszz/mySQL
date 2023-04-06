CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    serie int not null,
    nivel varchar(255) not null,
	idade int, 
    nota decimal(2,1) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Lais", 3, "Médio", 17, 9.8);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Leticia", 2, "Médio", 16, 7.4);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Ana", 2, "Médio", 16, 3.5);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Marisa", 8, "Fundamental", 13, 2.9);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Bruno", 6, "Fundamental", 11, 9.9);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Rodrigo", 8, "Fundamental", 13, 4.0);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Felipe", 2, "Infantil", 4, 7.8);
INSERT INTO tb_estudantes(nome, serie, nivel, idade, nota) VALUES ("Thiago", 3, "Infantil", 5, 9.5);

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 5.0 WHERE id = 6;