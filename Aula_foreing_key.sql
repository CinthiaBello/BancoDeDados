create database exemplo_segunda_forma_normal;
use exemplo_segunda_forma_normal;

create table pedidos(
	idpedido int primary key auto_increment,
    nome_produto varchar(255),
    preco double,
    quantidade int,
    id_cliente int, 
    constraint FK_id_cliente foreign key(id_cliente) references cliente(idcliente)
);

create table cliente(
	idcliente int primary key auto_increment,
    nome varchar (150),
    data_nascimento varchar(200),
    cpf varchar(14) unique,
    genero varchar(10)
);

insert into cliente values(null, "Cinthia", "22/12/1987", "000.236.598.22", "Feminino");

insert into pedidos values(null, "Vestido", 159.99, 2, 1);
