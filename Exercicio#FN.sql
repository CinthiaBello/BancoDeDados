CREATE DATABASE terceira_forma_normal;

use terceira_forma_normal;

create table cliente(
	idcliente int primary key auto_increment,
    nome_cliente varchar(255)
);

create table cidade(
	idcidade int primary key auto_increment,
    cidade varchar(150),
    estado varchar(2)
);

#Inserindo a chave estrangeira na tabela
alter table cidade add id_cliente int;

#Referenciando a chave estrangeira
alter table cidade add constraint fk_id_cliente foreign key (id_cliente) references cliente(idcliente);

create table produto(
	idproduto int primary key auto_increment,
    nome varchar(100),
    quantidade int,
    valor double
);

create table pedido(
	idpedido int primary key auto_increment,
    id_cliente int,
    id_produto int,
    constraint fk_id_cliente foreign key (id_cliente) references cliente(idcliente),
    constraint fk_id_produto foreign key (id_produto) references produto(idproduto)
);

# Insert de Clientes 
INSERT INTO cliente (nome_cliente) VALUES
('Julia Miranda'),
('Lucas Silva'),
('Ana Maria Lemos'),
('Pedro Rodrigues'),
('Carlos Lima'),
('Bruno Silva'),
('Gabriel Lima'),
('Diego Dantas'),
('Junior Rodrigues'),
('Lidia Lima');

#Insert de Produto 
INSERT INTO produto (nome, quantidade, valor) VALUES
('Arroz', 100, 23.50),
('Feijão', 200, 15.50),
('Farinha', 50, 5.00),
('Biscoito', 310, 7.75),
('Milho', 50, 8.00),
('Óleo', 80, 10.00),
('Leite', 500, 4.50),
('Suco', 100, 10.00),
('Chocolate', 200, 6.00),
('Açucar', 250, 15.00);

#Insert de Produto
INSERT INTO cidade (cidade, estado, id_cliente) VALUES
('Rio de Janeiro', 'RJ', 1),
('Brasília', 'DF', 2),
('São Paulo', 'SP', 3),
('Belo Horizonte', 'MG', 4),
('Manaus', 'AM', 5),
('Fortaleza', 'CE', 6),
('Porto Alegre', 'RS', 7),
('Recife', 'PE', 8),
('Acre', 'AC', 9),
('Rondonia', 'RO', 10);

#Insert de Produto 
INSERT INTO pedido (id_cliente, id_produto) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

SELECT * FROM pedido;

##### Exercício ####
#1) Suponha uma tabela "Funcionários" com os atributos: ID do Funcionário (chave primária), Nome do Funcionário, Departamento e Localização do Departamento(cidade e estado). Determine se esta tabela está em 3FN e explique sua resposta.
#A tabela "Funcionários" não está em 3FN porque ela necessita de atributos que não pertencem a ela, no caso, "Localização do Departamento" (cidade e estado) é determinado pelo "Departamento," que não é uma chave candidata.

#2) Você tem uma tabela "Encomendas" com os seguintes atributos: Número da Encomenda (chave primária), ID do Cliente, Nome do Cliente, e Cidade de Entrega. Avalie se esta tabela está em 3FN ou não e explique seu raciocínio.
#A tabela "Encomendas" não está em 3FN porque  ela necessita do atributo "Nome do Cliente" que é determinado pelo "ID do Cliente"  que não é uma chave candidata.

#3) Considere uma tabela "Produtos" com os atributos: ID do Produto (chave primária), Nome do Produto, Categoria do Produto e Nome do Fornecedor. Analise se esta tabela está em 3FN ou não e justifique sua resposta.
#A tabela "Produtos" está em 3FN, pois não depende de nenhuma outra tabela e todas as dependências parciais foram eliminadas.

#4) Dada uma tabela "Escolas" com os atributos: ID da Escola (chave primária), Nome da Escola, Nome do Diretor e Endereço do Diretor. Determine se esta tabela está em 3FN ou não, e forneça uma explicação.
#A tabela "Escolas" não está em 3FN  porque ela necessita do atributo  "Endereço do Diretor" que é determinado pelo "Nome do Diretor," que não é uma chave candidata.

#5) Suponha uma tabela "Pedidos" com os atributos: Número do Pedido (chave primária), Produto, ID do Cliente, Nome do Cliente e Estado do Cliente. Avalie se esta tabela está em 3FN ou não e explique por quê.
#A tabela "Pedidos" não está em 3FN porque ela necessita do atributo "Estado do Cliente" que é determinado pelo "ID do Cliente," que não é uma chave candidata.

#6) .Você possui uma tabela "Projetos" com os seguintes atributos: ID do Projeto (chave primária), Nome do Projeto, ID do Gerente do Projeto, Nome do Gerente e Departamento do Gerente. Determine se esta tabela está em 3FN e justifique sua resposta.
#A tabela "Projetos" não está em 3FN porque ela necessita do atributo "Departamento do Gerente" que é determinado pelo "ID do Gerente do Projeto," que não é uma chave candidata.





