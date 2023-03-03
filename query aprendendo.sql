CREATE DATABASE aprendendo;
USE aprendendo


CREATE TABLE funcionarios
(
	id varchar(45) not null,
	salario int not null default'0',
	departamento varchar(45) not null,
	PRIMARY KEY (id)
);

CREATE TABLE veiculos
(
	id varchar(45) not null,
	funcionario_id varchar(45) not null,
	veiculo varchar(45) not null default '',
	placa varchar(10) not null default '',
	PRIMARY KEY (id),
	constraint	fk_veiculos_funcionarios foreign key(funcionario_id) REFERENCES funcionarios (id)
);