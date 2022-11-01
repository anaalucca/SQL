-- Criação de trigger que armazena valor de pagamento novo após inserí-lo na tabela pagamento
-- Também inclui um id_novo de cada pagamento, data, hora e usuário que registrou novo pagamento

USE clinica_vet; 

-- Tabela que irá armazenar novos pagamentos 

CREATE TABLE novos_pagamentos (
	id_novo INT NOT NULL AUTO_INCREMENT, 
	valor_pagamento DECIMAL (5,2) NOT NULL,
    data_pagamento DATE NOT NULL,
    hora_pagamento TIME NOT NULL,
    usuario_pagamento VARCHAR (50) NOT NULL,    
	PRIMARY KEY (id_novo)
);

-- Criação do trigger que irá armazenar na tabela novos_pagamentos o valor_pagamento após inserção na tabela pagamento

CREATE TRIGGER `tr_add_pagamento`
BEFORE INSERT ON `pagamento`
FOR EACH ROW
INSERT INTO `novos_pagamentos` (valor_pagamento, data_pagamento, hora_pagamento, usuario_pagamento) 
VALUES (NEW.valor_pagamento, CURRENT_DATE(), CURRENT_TIME(), USER());

-- Exemplo de inserção de novo pagamento 

INSERT INTO pagamento (valor_pagamento, id_cliente, id_paciente) VALUES (70, 2, 2);

-- Como chamar a tabela novos_pagamentos e ver o novo pagamento que foi inserido

SELECT * FROM novos_pagamentos;



