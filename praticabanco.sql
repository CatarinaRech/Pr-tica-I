create database empresa_tecnologia;
use empresa_tecnologia;

create table cliente (
id_cliente int not null primary key auto_increment, 
nome_cliente varchar(500),
email_cliente varchar(500),
telefone_cliente varchar(500)
);

create table chamado (
id_chamado int not null primary key auto_increment,
descricao_problema varchar(500),
criticidade_chamado varchar(500),
status_chamado varchar(500),
data_abertura date 
);

create table colaboradores (
id_colaboador int not null primary key auto_increment, 
nome_colaborador varchar(500)
); 

create table cliente_has_chamado (
id_cliente_has_chamado int not null primary key auto_increment,
fk_cliente int not null,
foreign key (fk_chamado) references cliente(id_cliente),
fk_chamado int not null,
foreign key (fk_cliente) references cliente(id_cliente)
);

create table chamado_has_colaboradores (
id_chamado_has_colaboradores int not null primary key auto_increment,
fk_colaboradores int not null,
foreign key (fk_colaboradores) references colaboradores(id_colaboador),
fk_chamado int not null,
foreign key (fk_chamado) references chamado(id_chamado)
);

create table cliente_has_colaboradores (
id_cliente_has_colaboradores int not null primary key auto_increment,
fk_cliente int not null,
foreign key (fk_colaboradores) references cliente(id_cliente),
fk_colaboradores int not null,
foreign key (fk_cliente) references cliente(id_cliente)
);


