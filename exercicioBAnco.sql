create database exercico_banco_de_dados;

use exercicio_banco_de_dados;
# Exercício A
# 1ª Forma Normal:todos os atributos de uma tabela devem ser atômicos, ou seja, 
# a tabela não deve conter grupos repetidos e nem atributos com mais de um valor.

#Exercício B 
create table livros(
	id_livro integer primary key auto_increment,
    titulo varchar(50),
    autores varchar(50),
    ano_publicacao integer
);
desc livros;

insert into livros values(null, "Aventuras", "Autor1, Autor2, Autor3", 2005),
(null, "Romance", "Autor4", 2010),
(null, "Ficção Científica", "Autor5, Autor6", 2015);

select * from livros;

#Exercício C 
create table livros_c(
	id_livro integer primary key auto_increment,
    titulo varchar(50),
    autores varchar(50),
    isbn varchar(20),
    ano_publicacao integer
);
desc livros_c;

insert into livros_c values(null, "Aventuras", "Autor1", "999-44-111-000-6", 2005),
(null, "Romance", "Autor4", "777-88-444-555-8", 2010 ),
(null, "Ficção", "Autor7", "888-22-555-666-0", 2015);

select * from livros_c;

#Exercíco D 
create table produtos(
	id_produto integer primary key auto_increment,
    nome varchar(50),
    categoria varchar(50),
    qnt integer,
    preco double
);

desc produtos;

insert into produtos values(null, "Sabão em pó", "produto de limpeza", 100, 17.00),
(null, "Sombra", "produto de beleza", 50, 25.50),
(null, "Feijão", "Alimentação", 200, 15.20);

select * from produtos;



