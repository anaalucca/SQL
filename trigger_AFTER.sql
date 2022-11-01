-- Trigger que armazena peso anterior do animal depois que o altera na tabela paciente
-- Também inclui id_paciente, nome_paciente, id_cliente, data, hora e usuário que fez última atualização 

USE clinica_vet; 

-- Tabela que irá armazenar o peso anterior do animal 
-- Uso de um id_alteracao, pois assim fica possível alterar mais de uma vez o peso do mesmo animal não usando id_paciente como PK

CREATE TABLE peso_anterior (
	id_alteracao INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	id_paciente INT NOT NULL,
    nome_paciente VARCHAR (50) NOT NULL, 
    id_cliente INT NOT NULL,
    peso DECIMAL (5,2) NOT NULL,
    data_alteracao DATE NOT NULL,
    hora_alteracao TIME NOT NULL, 
    usuario_alteracao VARCHAR(50) NOT NULL
); 

-- Criação do trigger que irá armazenar na tabela peso_anterior o peso após modificação 

CREATE TRIGGER `tr_alter_peso`
AFTER UPDATE ON `paciente`
FOR EACH ROW 
INSERT INTO `peso_anterior` (id_paciente, nome_paciente, id_cliente, peso, data_alteracao, hora_alteracao, usuario_alteracao) 
VALUES (OLD.id_paciente, OLD.nome_paciente, OLD.id_cliente, OLD.peso, CURRENT_DATE(), CURRENT_TIME(), USER());

-- Exemplo de modificação de peso para determinado id_paciente

UPDATE paciente SET peso = 8.5 WHERE id_paciente = 1;

-- Como chamar a tabela peso_anterior e ver o peso anterior que foi armazenado após modificação

SELECT * FROM peso_anterior;



