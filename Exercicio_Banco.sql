
create database exercicio_1;
use exercicio_1;

#Exercício_1
create table pedidos(
	idPedido int primary key auto_increment,
    nome_cliente varchar(100),
    endereco varchar(200),
    produto_pedido varchar(200)
);
#Não está na segunda forma normal pois existem atributos que não dependem de outra tabela.

#Exercício_2
create table livros(
	ISBN int primary key,
    titulo varchar(200),
    autor varchar(100),
    editora varchar(100)
);
#Está na segunda forma normal pois não existe atributos que dependem de outra tabela 


