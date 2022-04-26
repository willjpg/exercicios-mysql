CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(100)NOT NULL,
contem boolean,
primary key(id)
);

INSERT INTO tb_categorias (tipo,contem) values ("Não Vegetariana", true);
INSERT INTO tb_categorias (tipo,contem) values ("Vegetariana", true);
INSERT INTO tb_categorias (tipo,contem) values ("Docê", true);
INSERT INTO tb_categorias (tipo,contem) values ("Sem Glúten", false);
INSERT INTO tb_categorias (tipo,contem) values ("Não Vegetariana Especial", true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(255) NOT NULL, 
descricao varchar(500),
entregaRapida boolean,
preco decimal(8,2), 
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Marguerita", "Molho de tomate, mussarela, tomates fatiados, azeitonas, manjericão e orégano.", true, 45.00, 1);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Calabresa:", "Molho de tomate, mussarela, calabresa fatiada, cebola e orégano.", true, 45.00, 1);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Baiana", "Molho picante, mussarela, calabresa ralada, pimenta calabresa, azeitonas e orégano.", true, 45.00, 1);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Catupiry", "Molho de tomate, mussarela, camada dupla de catupiry e orégano.", true, 45.00, 1);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Portuguesa", "Molho de tomate, mussarela, presunto, ovos, cebolas, pimentão, azeitona  e orégano.", true, 45.00, 1);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Chocolate com Morango", "Massa de pizza, morango e chocolate cremoso", true, 50.00, 3);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Massa de Couve-Flor", "Couve-Flor, mussarela e parmesão", true, 50.00, 2);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Mandioca", "Mandioca, molho de tomate, queijo vegetal, azeite, orégano, tomate e azeitona", true, 50.00, 4);

INSERT INTO tb_pizzas (nome, descricao, entregaRapida, preco, categoria_id) 
VALUES ("Especial Família", "Qualquer pizza com o Dobro do tamanho", true, 80, 5);

SELECT * FROM tb_pizzas;

select * from tb_pizzas WHERE preco > 45.00;

select * from tb_pizzas WHERE preco BETWEEN 50 AND 100;

select * from tb_pizzas WHERE nome LIKE "%M%";

select * from tb_pizzas inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.nome="Calabresa";

