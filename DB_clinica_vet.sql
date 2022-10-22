USE clinica_vet;

-- Create by Ana 
-- Last modification date: 2022-10-19 19:16

-- Table: Cliente

CREATE TABLE CLIENTE (
	id_cliente int NOT NULL AUTO_INCREMENT,
	nome_cliente varchar (100) NOT NULL,
	endereco_cliente varchar (100) NOT NULL, 
	telefone_cliente char (15) NOT NULL, 
	email_cliente varchar (40) NOT NULL, 
	cpf_cliente char (14) NOT NULL, 
	PRIMARY KEY (id_cliente)
) ; 


-- Table: Paciente

CREATE TABLE PACIENTE (
	id_paciente int NOT NULL AUTO_INCREMENT, 
	nome_paciente varchar (50) NOT NULL, 
	especie varchar (20) NOT NULL, 
	raca varchar (40) NOT NULL, 
	sexo	char (1) NOT NULL, 
	pelagem varchar (40) NOT NULL, 
	nascimento_paciente date NOT NULL, 
	castrado char (1) NOT NULL, 
	peso decimal (5,2) NOT NULL,
	id_cliente int NOT NULL, 
	PRIMARY KEY (id_paciente),
	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
) ; 

-- Table: Pagamento

CREATE TABLE PAGAMENTO (
	id_pagamento int NOT NULL AUTO_INCREMENT, 
	valor_pagamento decimal (5,2) NOT NULL,
	id_cliente int NOT NULL, 
	id_paciente int NOT NULL, 
 	PRIMARY KEY (id_pagamento, id_cliente, id_paciente),
	FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
	FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente)
) ; 

-- Table: Médico Veterinário 

CREATE TABLE MEDICO_VETERINARIO (
	id_mv	int NOT NULL AUTO_INCREMENT, 
	nome_mv varchar (100) NOT NULL, 
	telefone_mv	char (15) NOT NULL, 
	email_mv varchar (40) NOT NULL, 
	cpf_mv char (14) NOT NULL, 
	crmv varchar (10) NOT NULL, 
	especialidade varchar (50) NOT NULL,
 	PRIMARY KEY (id_mv)
) ; 

-- Table: Estagiários 

CREATE TABLE ESTAGIARIO (
	id_estagiario int NOT NULL AUTO_INCREMENT, 
	nome_estagiario varchar (100) NOT NULL, 
	telefone_estagiario char (15) NOT NULL, 
	email_estagiario varchar (40) NOT NULL, 
	cpf_estagiario char (14) NOT NULL, 
	instituicao_ensino varchar (50) NOT NULL,
	tipo_estagio varchar (30) NOT NULL, 
	PRIMARY KEY (id_estagiario)
) ; 

-- Table: Consulta 

CREATE TABLE CONSULTA (
	id_consulta	int NOT NULL AUTO_INCREMENT,
	data_consulta date NOT NULL, 
	hora_consulta varchar (5) NOT NULL,
	id_mv int NOT NULL, 
	id_estagiario int NOT NULL,
	tipo_consulta varchar (20) NOT NULL, 
	id_cliente int NOT NULL, 
	id_paciente int NOT NULL, 
	id_pagamento int NOT NULL, 
	PRIMARY KEY (id_consulta),
	FOREIGN KEY (id_mv) REFERENCES medico_veterinario (id_mv),
	FOREIGN KEY (id_estagiario) REFERENCES estagiario (id_estagiario),
	FOREIGN KEY (id_pagamento, id_cliente, id_paciente) REFERENCES pagamento (id_pagamento, id_cliente, id_paciente)
) ; 

-- Table: Tratamento 

CREATE TABLE TRATAMENTO (
	id_tratamento int NOT NULL AUTO_INCREMENT,
	id_consulta int NOT NULL, 
	id_mv int NOT NULL, 
	tipo_tratamento varchar (50) NOT NULL, 
	data_consulta date NOT NULL, 
	PRIMARY KEY (id_tratamento),
	FOREIGN KEY (id_mv, id_consulta) REFERENCES consulta (id_mv, id_consulta)	
) ; 

-- Table: Remédios 

CREATE TABLE REMEDIO (
	id_remedio int NOT NULL AUTO_INCREMENT, 
	id_tratamento int NOT NULL, 
	nome_remedio varchar (50) NOT NULL, 
	qtd_utilizada varchar (50) NOT NULL, 
	categoria varchar (50) NOT NULL, 
	PRIMARY KEY (id_remedio),
	FOREIGN KEY (id_tratamento) REFERENCES tratamento (id_tratamento)
) ; 

-- Table: Vacinação 

CREATE TABLE VACINACAO (
	id_consulta int NOT NULL, 
	id_mv int NOT NULL, 
	data_consulta date NOT NULL, 
	tipo_vacina varchar (20) NOT NULL, 
	lote_vacina varchar (50) NOT NULL, 
	data_revacina date NOT NULL, 
	PRIMARY KEY (id_consulta),
	FOREIGN KEY (id_mv) REFERENCES consulta (id_mv)
) ; 

-- End of file. 