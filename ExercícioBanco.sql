CREATE DATABASE exercicio_banco_de_dados;
create table agenda(
	nome varchar(50),
    telefone varchar(10),
    endereco varchar(50)
);
desc agenda;

insert into agenda values("Cinthia", "99998888","Rua 1 casa 2"),
("Julia", "88889999", "Rua 2 casa 1"),
("Luan", "99997777", "Rua 3 casa 4"),
("Gustavo", "88887777", "Rua 5 casa 6"),
("Josélia", "77779999", "Rua 7 casa 2"),
("Rafael", "55552222", "Rua 4 casa 3"),
("Lucas", "44445555", "Rua 6 casa 1"),
("Matheus", "88889977", "Rua 10 casa 5"),
("Leonardo", "11112222", "Rua 12 casa 10"),
("Luiza", "33332222", "Rua 11 casa 11");

select * from agenda;

select count(*) from agenda;

select concat(nome, " telefone ", telefone, " e endereço: ", endereco ) from agenda;


create table clientes(
	nome varchar(50),
    telefone varchar(10),
    endereco varchar(50),
    bairro varchar(30),
    cidade varchar(20),
    estado varchar(2),
    cpf varchar(20),
    email varchar(50),
    idade integer
    );
    
drop table clientes;
    
desc clientes;
    
insert into clientes values("Cinthia", null,"Rua 1 casa 2", "Palmeiras", "Governador Valadares", "MG", "10478523697", "email1@email.com.br", 35),
("Julia", "88889999", "Rua 2 casa 1", "Palmeiras", "Governador Valadares", "MG", "77889944556", "email2@email.com.br", 30 ),
("Luan", "99997777", "Rua 3 casa 4", "Aguas Claras", "Brasília", "DF", "44551122003", "email3@email.com.br", 35),
("Gustavo", "88887777", "Rua 5 casa 6", "Aguas Claras", "Brasília", "DF", "14778523697", null, 25),
("Josélia", "77779999", "Rua 7 casa 2", "Aguas Claras", "Brasília", "DF", "14778523111", "email5@email.com.br", 22 ),
("Rafael", "55552222", "Rua 4 casa 3", "Nova Guarapari", "Guarapari", "ES", "78945678966", "email6@email.com.br", 30),
("Lucas", "44445555", "Rua 6 casa 1","Nova Guarapari", "Guarapari", "ES", "78900078966", "email7@email.com.br", 30),
("Matheus", "88889977", "Rua 10 casa 5", "Nova Guarapari", "Guarapari", "ES", "78945678000", "email8@email.com.br", 40),
("Leonardo", "11112222", "Rua 12 casa 10", "Leme", "Rio de Janeiro", "RJ", 000333666987, "email9@email.com.br", 25),
("Luiz", "33232222", "Rua 11 casa 10", "Broclyn", "Nova York", "NY", "555500012345", null, 35 ),
("Marcos", "99332222", "Rua 21 casa 1", "Broclyn", "Nova York", "NY", "333311112345", "email12@email.com.br", 25 ),
("Vanessa", "78332222", "Rua 1 casa 11", "Broclyn", "Nova York", "NY", "555001112345", "email13@email.com.br", 30 ),
("Tulio", null, "Rua 8 casa 11", "Broclyn", "Nova York", "NY", "555511198745", "email14@email.com.br", 22 ),
("Luna", "39932222", "Rua 1 casa 21", "Leme", "Rio de Janeiro", "RJ", "555331112345", "email15@email.com.br", 15 ),
("Lívia", "33332222", "Rua 11 casa 11", "Leme", "Rio de Janeiro", "RJ", "555511112399", null, 35 );
    
select * from clientes;

select nome from clientes where telefone is null or email is null;
    
    



