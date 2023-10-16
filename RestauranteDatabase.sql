create database restaurante;
use restaurante;

create table clientes(
            codCli int primary key auto_increment,
            nome_cliente varchar(60),
            telefone varchar(16),
            email varchar(40)
);
insert into clientes(nome_cliente,telefone,email) values 
            ('Carlos Martins','1195863-2398','carlosmart12@outlook.com'),
            ('Joao Cleber','1195863-5342','cleberjo21@outlook.com'),
            ('Lucas Silva','1196453-8765','lucsilva32@outlook.com'),
            ('Luidi Amorim','1196594-9842','amorimlui54@outlook.com'),
            ('Luana Santos','1196532-9876','lluanasantos76@outlook.com');
select * from clientes;

create table mesas(
             NumeroMesa int primary key auto_increment,
             Capacidade int,
             statusMesa varchar(20),
             FK_codCli int,
             foreign key (FK_codCli) REFERENCES clientes(codCli)
);
alter table mesas add column consumo int;
select * from mesas;
insert into mesas(Capacidade, statusMesa,consumo) values
                 (6,'mesa cancelada',100),
                 (8,'mesa em aberto',300),
                 (2, 'mesa consumindo',200),
                 (4,'mesa em aberto',300),
                 (6,'mesa cancelada', 500);

create table garcom(
            idGacom int primary key auto_increment,
            nome varchar(60),
            sobrenome varchar(60),
            telefone varchar(16),
            email varchar(60),
            FK_NumeroMesa int,
            foreign key (FK_NumeroMesa) references mesas(NumeroMesa)
);
select * from garcom;
insert into garcom(nome,sobrenome,telefone,email) values
                    ('Carlos','Eduardo','1195862-2397','carloseedu2@gmail.com'),
                    ('Natalia','Silva','1195864-2337','nataliaaa23@outlook.com'),
                    ('Joao','Martins','1195566-2237','joaoma33@outlook.com'),
                    ('Lucas','Santos','1192586-7354','lucass76ai@gamil.com'),
                    ('Nicolas','Silveira','1195326-9065','nicsilvei54@gamil.com');

create table reserva (
    id_reserva int primary key auto_increment,
    dataReserva date,
    horaReserva time,
    FK_codCliente INT,
    foreign key (FK_codCliente) references clientes(codCli),
    FK_MesaNumeroMesa INT,
    foreign key (FK_MesaNumeroMesa) references mesas(NumeroMesa)
);
select * from reserva;
insert into reserva(dataReserva,horaReserva) values
                    ('2023-06-12','14:00'),
                    ('2023-06-13','10:00'),
                    ('2023-06-13','9:00'),
                    ('2023-06-13' ,'11:00'),
					('2023-06-14' ,'19:00');

CREATE TABLE Produto (
    id_produto int primary key auto_increment,
    Nome_Produt varchar(100),
    descr text,
    Preco decimal(10,2),
    QtdEstoque int
);
select * from Produto;
insert into Produto(Nome_Produt,descr,Preco,QtdEstoque) values
                    ('Macarrao','penne 250 gramas',120.00,30),
                    ('Picanha','picanha com molho',70.00,40),
                    ('Risoto','Risoto de parmesao',59.99,30),
                    ('Pastel de carne','pastel de carne c/ azeitona',20.00,25),
                    ('Maminha ao molho','maminha c/ molho branco', 78.50,30);






