CREATE DATABASE primeiro_bamco_de_dados;

use primeiro_bamco_de_dados;

create table pessoa(
nome varchar(50),
idade integer,
altura double,
genero varchar(1)
);

show tables;

desc pessoa;

insert into pessoa values("Cinthia",35,1.77, "F");
insert into pessoa(nome,idade) values("Maria", 60);
insert into pessoa values("José",45,1.87, "M"),
("Vanessa", 32, 1.85, "F");

select * from pessoa;

#Varchar = caracteres variantes
#char = tamanho fixo
#binary = números binários
#bloob = salvar imagens
#longtext = tesxtos longos a partir de 255 caracteres
#4,294,967,297 número máxino de caracteres
#enum = dados predefinidos

create table pedido(
	nome_produto varchar(50),
    quantidade integer,
    preco double,
    pedido_status enum("preparando", "a caminho", "Entregue", "Cancelado")
);

insert into pedido values("Arroz", 50, 23.00, "Entregue");

select * from pedido;

#drop table pedido;
select nome, idade from pessoa;

select(3 * 2);

select nome, idade from pessoa where genero = "M";
select idade from pessoa where nome = "Cinthia";

insert into pessoa values("Maria da Silva", 55, 1.65,"F");
select idade from pessoa where nome = "Maria";
select idade from pessoa where nome like "%Maria%";

#inserir 10 dados na table cliente
#nome, idade, cpf, endereço, telefone

create table cliente(
	nome varchar(50),
    idade integer, 
    cpf varchar(12),
    endereco varchar(50),
    telefone varchar(8)
    );

insert into cliente values("Ana", 30, 1254879635-56, "Rua 45, casa 8", "98582698"),
("Marcos", 45, 558282489-56, "Rua 12, casa 9 ", "85247963"),
("Vanessa", 21, "458792369-89", "Rua 7 casa 10" "78541236"),
("Júlia", 78, "123456789-12", "Rua 6 casa 1", "12345678"),
("Gustavo", 19, "987456123-23", "Rua 7 casa 5", "74185236"),
("Luan", 33, "789456321-78", "Rua 30 casa 12", "01234567"),
("Luiza", 35, "564789258-12", "Rua 11 casa 10", "74185296"),
("Tinany", 21, "457812963-11", "Rua 10 casa 1", "45451212"),
("Tulio", 45, "123123456-89", "Rua 22 casa 10", "78784545"),




