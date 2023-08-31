CREATE DATABASE primeiro_banco_de_dados;

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
    cpf varchar(20),
    endereco varchar(50),
    telefone varchar(10)
);
    
drop table cliente;

select * from cliente;

insert into cliente values("Ana", 30, "125487963-56", "Rua 45 casa 8", "98582698"),
("Marcos", 45, "55828248-56", "Rua 12 casa 9 ", "85247963"),
("Vanessa", 21, "45879239-89", "Rua 7 casa 10", "78541236"),
("Júlia", 78, "12345678-12", "Rua 6 casa 1", "12345678"),
("Gustavo", 19, "98745623-23", "Rua 7 casa 5", "74185236"),
("Luan", 33, "78945631-78", "Rua 30 casa 12", "01234567"),
("Luiza", 35, "56478958-12", "Rua 11 casa 10", "74185296"),
("Tinany", 21, "45781263-11", "Rua 10 casa 1", "45451212"),
("Tulio", 45, "12312456-89", "Rua 22 casa 10", "78784545"),
("Cinthia", 25, "01472536-33", "Rua 5 casa 10", "88775263");

create table cadastro(
	nome varchar(50),
    idade integer, 
    cpf varchar(20),
    endereco varchar(50),
    telefone varchar(10)
);

insert into cadastro values("Ana", null, "125487963-56", "Rua 45 casa 8", "98582698"),
("Marcos", 45, "55828248-56", "Rua 12 casa 9 ", null),
("Vanessa", 21, null, "Rua 7 casa 10", "78541236");

select * from cliente;

select nome, telefone from cliente where idade> 30 and cpf like "123%";
select nome, telefone from cliente where idade> 30 or  cpf like "123%";

select * from cadastro;

select count(*) from cliente;

#as = aliais, mostre como
select count(*) as "Contador de cliente" from cliente;

select count(telefone), nome from cliente group by nome order by nome;

select  nome from cadastro where telefone is null;

#Atualizando dado
update cadastro set telefone = "87974545" where nome="Marcos";
select * from cadastro;
set sql_safe_updates = 0; 

create table errada(
nome varchar(50),
autura double,
pezo double                                                                        
);

alter table errada add cpf varchar(20);

describe errada;

alter table errada modify column peso double not null; 

alter table errada drop column autura;

alter table errada rename column pezo to peso;

insert into errada values("Cinthia", 68.50, "12454215421");

select * from  errada;


alter table errada modify column peso double not null first;

alter table errada modify column peso double not null after cpf;

select concat(nome, " pesa ", peso, " e seu cpf é: ", cpf ) from errada;

delete from cadastro where nome="Marcos"; 