CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
nome varchar(100)NOT NULL,
ativa boolean,
primary key(id)
);

INSERT INTO tb_categorias (nome, ativa) values ("Medicamentos", true);
INSERT INTO tb_categorias (nome, ativa) values ("Medicamentos controlados", true);
INSERT INTO tb_categorias (nome, ativa) values ("Higiene", true);
INSERT INTO tb_categorias (nome, ativa) values ("Beleza", true);
INSERT INTO tb_categorias (nome, ativa) values ("Suplementos", true);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) NOT NULL, 
descricao varchar(500),
quantidade int,
preco decimal(8,2), 
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Buscopan", "reduz cÃ³licas", 140, 20, 1);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Paroxetina", "antidepressivo", 122, 50, 2);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Desodorante Dove", "banho", 190, 15, 3);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Esmalte Impala", "esmalte", 144, 5, 4);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Centrum", "vitamina", 111, 150, 5);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Dorflex", "relaxante muscular", 100, 20, 1);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Topiramato", "estabiliza humor", 177, 60, 2);

INSERT INTO tb_produtos (nome, descricao, quantidade, preco, categoria_id) 
VALUES ("Shampoo Pantene", "cabelos", 124, 20, 3);

select * from tb_produtos;

select * from tb_categorias;

select * from tb_produtos WHERE preco > 50.00;

select * from tb_produtos WHERE preco BETWEEN 5 AND 60;

select * from tb_produtos WHERE nome LIKE "%C%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.nome="beleza";


