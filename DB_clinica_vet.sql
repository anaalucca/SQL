-- Create by Ana 
-- Last modificationn date: 2022-10-04 17:00

-- tables 
-- Table: Cliente

CREATE TABLE CLIENTE (
	id_cliente int NOT NULL,
	nome_cliente varchar (100) NOT NULL,
	nascimento_cliente date NOT NULL, 
	endereco_cliente varchar (100) NOT NULL, 
	telefone_cliente char (15) NOT NULL, 
	email_cliente varchar (40) NOT NULL, 
	cpf_cliente char (14) NOT NULL, 
	CONSTRAINT PK_CLIENTE PRIMARY KEY (id_cliente)
) ; 


-- Table: Paciente

CREATE TABLE PACIENTE (
	id_paciente int NOT NULL, 
	nome_paciente varchar (50) NOT NULL, 
	especie varchar (20) NOT NULL, 
	raca varchar (40) NOT NULL, 
	sexo	char (1) NOT NULL, 
	pelagem varchar (40) NOT NULL, 
	nascimento_paciente date NULL, 
	castrado char (1) NOT NULL, 
	peso numeric (2,0) NULL, 
	CONSTRAINT PK_PACIENTE PRIMARY KEY (id_paciente)
) ; 

-- Table: Pagamento

CREATE TABLE PAGAMENTO (
	id_pagamento int NOT NULL, 
	valor_pagamento numeric (2,0) NOT NULL,
	id_cliente int NOT NULL, 
	id_paciente int NOT NULL, 
 	CONSTRAINT PK_PAGAMENTO PRIMARY KEY (id_pagamento, id_cliente, id_paciente)
) ; 

-- Table: Consulta 

CREATE TABLE CONSULTA (
	id_consulta	int NOT NULL,
	data_consulta date NOT NULL, 
	hora_consulta varchar (5) NOT NULL,
	id_mv int NOT NULL, 
	id_estagiario int NOT NULL,
	agendado char (1) NOT NULL, 
	tipo_consulta varchar (10) NOT NULL, 
	historico varchar (300) NOT NULL,
	id_cliente int NOT NULL, 
	id_paciente int NOT NULL, 
	id_pagamento int NOT NULL, 
	CONSTRAINT PK_CONSULTA PRIMARY KEY (data_consulta, hora_consulta)
) ; 

-- Table: Médico Veterinário 

CREATE TABLE MEDICO_VETERINARIO (
	id_mv	int NOT NULL, 
	nome_mv varchar (50) NOT NULL, 
	telefone_mv	char (15) NOT NULL, 
	email_mv varchar (40) NOT NULL, 
	cpf_mv char (14) NOT NULL, 
	crmv varchar (15) NOT NULL, 
	especialidade varchar (50) NOT NULL,
 	CONSTRAINT PK_MEDICO_VETERINARIO PRIMARY KEY (id_mv)
) ; 

-- Table: Estagiários 

CREATE TABLE ESTAGIARIOS (
	id_estagiario int NOT NULL, 
	nome_estagiario varchar (50) NOT NULL, 
	elefone_estagiario char (15) NOT NULL, 
	mail_estagiario varchar (40) NOT NULL, 
	cpf_estagiario char (14) NOT NULL, 
	instituicao_ensino varchar (50) NOT NULL,
	tipo_estagio varchar (30) NOT NULL, 
	CONSTRAINT PK_ESTAGIARIOS PRIMARY KEY (id_estagiario)
) ; 

-- Table: Tratamento 

CREATE TABLE TRATAMENTO (
	id_tratamento int NOT NULL,
	id_consulta int NOT NULL, 
	id_mv int NOT NULL, 
	tipo_tratamento varchar (50) NOT NULL, 
	data_consulta date NOT NULL, 
	hora_consulta varchar (5) NOT NULL,
	CONSTRAINT PK_TRATAMENTO PRIMARY KEY (id_tratamento)
) ; 

-- Table: Remédios 

CREATE TABLE REMEDIOS (
	id_remedio int NOT NULL, 
	id_tratamento int NOT NULL, 
	nome_remedio varchar (50) NOT NULL, 
	qtd_utilizada varchar (50) NOT NULL, 
	categoria varchar (50) NOT NULL, 
	CONSTRAINT PK_REMEDIOS PRIMARY KEY (id_remedio)
) ; 

-- Table: Vacinação 

CREATE TABLE VACINACAO (
	id_consulta int NOT NULL, 
	id_mv int NOT NULL, 
	data_consulta date NOT NULL, 
	hora_consulta varchar (5) NOT NULL,
	tipo_vacina varchar (20) NOT NULL, 
	lote_vacina varchar (50) NOT NULL, 
	data_revacina date NOT NULL, 
	CONSTRAINT PK_VACINACAO PRIMARY KEY (id_consulta)
) ; 

-- foreign keys 
-- Reference: FK_PAGAMENTO_CLIENTE (table: PAGAMENTO)
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_CLIENTE 
FOREIGN KEY FK_PAGAMENTO_CLIENTE (id_cliente)
	REFERENCES CLIENTE (id_cliente) ;

-- Reference: FK_PAGAMENTO_PACIENTE (table: PAGAMENTO)
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_PACIENTE
FOREIGN KEY FK_PAGAMENTO_PACIENTE (id_paciente)
	REFERENCES PACIENTE (id_paciente) ; 

-- Reference: FK_CONSULTA_MEDICO_VETERINARIO (table: CONSULTA)
ALTER TABLE CONSULTA ADD CONSTRAINT FK_CONSULTA_MEDICO_VETERINARIO
FOREIGN KEY FK_CONSULTA_MEDICO_VETERINARIO (id_mv)
	REFERENCES MEDICO_VETERINARIO (id_mv) ; 

-- Reference: FK_CONSULTA_ESTAGIARIOS (table: CONSULTA)
ALTER TABLE CONSULTA ADD CONSTRAINT FK_CONSULTA_ESTAGIARIOS
FOREIGN KEY FK_CONSULTA_ESTAGIARIOS (id_estagiario)
	REFERENCES ESTAGIARIOS (id_estagiario) ; 

-- Reference: FK_CONSULTA_PAGAMENTO (table: CONSULTA)
ALTER TABLE CONSULTA ADD CONSTRAINT FK_CONSULTA_PAGAMENTO
FOREIGN KEY FK_CONSULTA_PAGAMENTO (id_pagamento, id_cliente, id_paciente)
	REFERENCES PAGAMENTO (id_pagamento, id_cliente, id_paciente) ; 

-- Reference: FK_TRATAMENTO_CONSULTA (table: TRATAMENTO)
ALTER TABLE TRATAMENTO ADD CONSTRAINT FK_TRATAMENTO_CONSULTA 
FOREIGN KEY FK_TRATAMENTO_CONSULTA (id_mv, data_consulta, hora_consulta)
	REFERENCES CONSULTA (id_mv, data_consulta, hora_consulta) ;

-- Reference: FK_REMEDIOS_TRATAMENTO (table: REMEDIOS)
ALTER TABLE REMEDIOS ADD CONSTRAINT FK_REMEDIOS_TRATAMENTO
FOREIGN KEY FK_REMEDIOS_TRATAMENTO (id_tratamento)
	REFERENCES TRATAMENTO (id_tratamento) ; 

-- Reference: FK_VACINACAO_CONSULTA (table: VACINACAO)
ALTER TABLE VACINACAO ADD CONSTRAINT FK_VACINACAO_CONSULTA
FOREIGN KEY FK_VACINACAO_CONSULTA (id_mv, data_consulta, hora_consulta)
	REFERENCES CONSULTA (id_mv, data_consulta, hora_consulta) ; 


-- End of file. 