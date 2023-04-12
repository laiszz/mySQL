CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    descricao varchar(255) not null,
    desbloqueada boolean not null,
    primary key(id)
);

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    nivel int not null,
    poder_ataque int not null,
    poder_defesa int not null,
    classes_id bigint not null,
    PRIMARY KEY(id),
    CONSTRAINT fk_classes FOREIGN KEY(classes_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(descricao, desbloqueada) VALUES ("guerreiro", true);
INSERT INTO tb_classes(descricao, desbloqueada) VALUES ("guerreiro", false);
INSERT INTO tb_classes(descricao, desbloqueada) VALUES ("arqueiro", true);
INSERT INTO tb_classes(descricao, desbloqueada) VALUES ("arqueiro", false);
INSERT INTO tb_classes(descricao, desbloqueada) VALUES ("mago", true);
INSERT INTO tb_classes(descricao, desbloqueada) VALUES ("mago", false);

INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Lais", 1, 2000, 1500, 5);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Thiago", 2, 2300, 2500, 5);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Katarina", 2, 1000, 4500, 4);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Amanda", 1, 1200, 1000, 5);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Nicolle", 3, 5000, 1200, 1);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Queren", 1, 800, 4200, 1);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Jennifer", 4, 1200, 3000, 1);
INSERT INTO tb_personagens(nome, nivel, poder_ataque, poder_defesa, classes_id) VALUES ("Gabriel", 3, 3200, 1500, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";
SELECT nome, nivel, poder_defesa FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;
SELECT nome, nivel, poder_defesa FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE tb_personagens.classes_id = 1;