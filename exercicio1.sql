CREATE DATABASE bd_teste_1e;
use bd_teste_1e;

create table tbusuarios(
iduser integer PRIMARY KEY,
usuario varchar(50),
login varchar(20),
senha varchar(20),
perfil varchar(20)
);

create table pessoa(
id integer PRIMARY KEY,
bi varchar(45),
nome varchar(45),
data_nasc date,
telefone varchar(45),
email varchar(45),
morada varchar(45)
);

create table tbfuncionarios(
idfunc integer,
nome varchar(50),
registro integer PRIMARY KEY,
guerra varchar(30),
gerencia varchar(20),
det varchar(20),
turno varchar(10),
cargo varchar(30),
atividade varchar(50),
funcao varchar(50),
vinculo varchar(30),
situacao varchar(30)
);

describe pessoa;
describe tbfuncionario;
describe tbusuarios;

drop table tbusuarios;
alter table tbfuncionarios rename to tbfuncionario;
alter table tbfuncionario rename column area to Area;
alter table tbfuncionario rename column turno to Turno;
alter table tbfuncionario rename column funcao to Funcao;

alter table pessoa rename column data_nasc to datanascimento;
alter table pessoa drop column morada;