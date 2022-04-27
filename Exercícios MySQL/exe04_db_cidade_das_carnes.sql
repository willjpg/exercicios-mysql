CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(100)NOT NULL,
parte varchar(100),
primary key(id)
);

INSERT INTO tb_categorias (tipo, parte) values ("Bovina", "Barriga");
INSERT INTO tb_categorias (tipo, parte) values ("Frango", "Peito");
INSERT INTO tb_categorias (tipo, parte) values ("Suina", "Barriga");
INSERT INTO tb_categorias (tipo, parte) values ("Vegana", "Null");
INSERT INTO tb_categorias (tipo, parte) values ("Outros", "Outros");

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) NOT NULL, 
validade DATE,
quantidade int,
preco decimal(8,2), 
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Acém", "2022/05/16", 10, 80.00, 1);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Peito de Frango ", "2022/05/16", 122, 50, 2);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Picanha", "2022/05/16", 190, 90, 1);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Carne de Jaca", "2022/05/16", 144, 50, 5);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Maminha", "2022/05/16", 111, 60, 1);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Filé de Frango", "2022/05/16", 100, 60, 2);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Linguiça", "2022/05/16", 177, 40, 3);

INSERT INTO tb_produtos (nome, validade, quantidade, preco, categoria_id) 
VALUES ("Bacon", "2022/05/16", 124, 55, 3);

select * from tb_produtos;

select * from tb_categorias;

select * from tb_produtos WHERE preco > 50.00;

select * from tb_produtos WHERE preco BETWEEN 50 AND 150;

select * from tb_produtos WHERE nome LIKE "%C%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.tipo="bovina";