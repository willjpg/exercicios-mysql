CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

create table tb_categorias(
id bigint auto_increment,
curso varchar(100)NOT NULL,
vagas int,
primary key(id)
);

INSERT INTO tb_categorias (curso, vagas) values ("Exatas", 50);
INSERT INTO tb_categorias (curso, vagas) values ("Humanas", 600);
INSERT INTO tb_categorias (curso, vagas) values ("Biologicas", 50);
INSERT INTO tb_categorias (curso, vagas) values ("Tecnologia", 70);
INSERT INTO tb_categorias (curso, vagas) values ("Outros", false);

CREATE TABLE tb_cursos(
id bigint auto_increment,
curso varchar(100) NOT NULL, 
professor varchar(100) NOT NULL,
anos int NOT NULL,
precoMes decimal(8,2), 
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Ciência da Computação", "Mario", 4, 2000, 4);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Neurociência", "Joana", 5, 2000, 3);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Direito", "Fernando", 5, 1200, 2);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Matemática", "Marco", 4, 600, 1);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Medicina", "Glória", 6, 4000, 3);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("História", "Marcela", 4, 600, 2);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Filosofia", "Michelle", 4, 600, 2);

INSERT INTO tb_cursos (curso, professor, anos, precoMes, categoria_id) 
VALUES ("Física","Rafael", 4, 600, 1);

select * from tb_cursos;

select * from tb_categorias;

select * from tb_cursos WHERE precoMes > 500.00;

select * from tb_cursos WHERE precoMes BETWEEN 600 AND 1000;

select * from tb_cursos WHERE curso LIKE "%J%";

select * from tb_cursos inner join tb_categorias
on tb_cursos.categoria_id = tb_categorias.id;

select * from tb_cursos inner join tb_categorias
on tb_cursos.categoria_id = tb_categorias.id
where tb_categorias.curso="Exatas";