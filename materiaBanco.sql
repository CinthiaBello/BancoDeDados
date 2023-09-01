create database banco_primeira_formula;

use banco_primeira_formula;

create table pessoa(
	id  integer primary key auto_increment,
    cpf varchar(14) unique,
    telefone varchar(20),
    logradouro varchar(100),
    estado varchar(2),
    numero_casa varchar(10),
    bairro varchar(50),
    cep varchar(10)
);

insert into pessoa value(null, "014.258.454-88", "(61)99999-5555", "Avenida sem fim", "DF", "h12", "Do Nunca", "773333-030");

select * from pessoa;

