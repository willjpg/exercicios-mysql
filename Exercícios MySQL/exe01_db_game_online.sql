CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
especializacao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_classes (classe,especializacao) VALUES ("Lutador", "Cavaleiro");

INSERT INTO tb_classes (classe,especializacao) VALUES ("Mago", "Sacerdote");

INSERT INTO tb_classes (classe,especializacao) VALUES ("Atirador", "Arqueiro Ladrão");

INSERT INTO tb_classes (classe,especializacao) VALUES ("Armeiro", "Sniper");

INSERT INTO tb_classes (classe,especializacao) VALUES ("Tanque", "Escudeiro");
-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
raça varchar(255) NOT NULL, 
nv int,
poderAtaque int,
poderDefesa int,
class_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (class_id) REFERENCES tb_classes(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Guilian", "Argoniano", 30 , 1500, 1100, 3);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Fixin", "Fada", 27 , 800,200, 2);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Baston", "Humano", 61 , 5000,8000, 5);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque,poderDefesa, class_id)
VALUES ("Vasto", "Humano", 28 , 1500,700, 4);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Milla", "Criatura", 78 , 7500, 4000, 3);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Bistra", "Ork", 2 , 500, 300, 1);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Hilda", "Humano", 30 , 1500, 500, 2);

INSERT INTO tb_personagens (nome, raça, nv, poderAtaque, poderDefesa, class_id)
VALUES ("Julian", "Anão", 48 , 2300, 1300, 4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens where poderAtaque > 7000;
SELECT * FROM tb_personagens where poderDefesa BETWEEN 2000 and 1000;
SELECT * FROM tb_personagens WHERE nome LIKE "%o%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.class_id = tb_classes.id;

SELECT nome, tb_classes.classe FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.class_id = tb_classes.id
WHERE tb_classes.classe = "Atirador";