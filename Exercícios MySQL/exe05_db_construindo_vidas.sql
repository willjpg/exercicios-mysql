CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(100)NOT NULL,
contem boolean,
primary key(id)
);

INSERT INTO tb_categorias (tipo, contem) values ("Aço", true);
INSERT INTO tb_categorias (tipo, contem) values ("Aluminio", true);
INSERT INTO tb_categorias (tipo, contem) values ("Concreto", true);
INSERT INTO tb_categorias (tipo, contem) values ("Vidro", true);
INSERT INTO tb_categorias (tipo, contem) values ("Outros", false);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) NOT NULL, 
marca varchar(100),
quantidade int,
preco decimal(8,2), 
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Torneira", "Astrom", 4, 80.00, 2);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Tijolo", "Bison", 5000, 30, 1);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Vidraça", "Astrom", 12, 360, 4);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Viga", "Bison", 38, 180, 1);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Cimento", "Bison", 1000, 50, 3);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Lâmpada", "Bison", 20, 20, 4);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Fios", "Bison", 0, 40, 5);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, categoria_id) 
VALUES ("Pia","Astrom", 7, 120, 5);

select * from tb_produtos;

select * from tb_categorias;

select * from tb_produtos WHERE preco > 100.00;

select * from tb_produtos WHERE preco BETWEEN 70 AND 150;

select * from tb_produtos WHERE nome LIKE "%C%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id
where tb_categorias.tipo="aço";