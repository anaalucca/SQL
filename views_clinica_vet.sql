USE clinica_vet;

-- Histórico de retornos

CREATE OR REPLACE VIEW retornos AS (
	SELECT data_consulta, nome_cliente, nome_paciente, valor_pagamento, tipo_consulta
	FROM consulta c JOIN pagamento p ON (c.id_pagamento = p.id_pagamento)
	JOIN cliente l ON (c.id_cliente = l.id_cliente)
	JOIN paciente pa ON (pa.id_cliente = l.id_cliente)
	WHERE valor_pagamento = 0
	ORDER BY data_consulta, nome_cliente ASC
);

SELECT * FROM retornos;

-- Historico de todos gatos vacinados 

CREATE OR REPLACE VIEW gatos_vacinados AS (
	SELECT nome_cliente, nome_paciente, tipo_vacina FROM consulta c
	JOIN paciente p ON (p.id_paciente = c.id_paciente)
	JOIN cliente l ON (l.id_cliente = p.id_cliente)
 	JOIN vacinacao v ON (v.id_consulta = c.id_consulta)
    	WHERE tipo_consulta = "vacinação" and especie = "felino" 
    	ORDER BY nome_cliente); 
    
SELECT * FROM gatos_vacinados;

-- Historico de todos os atendimentos clínicos no mês 10/2022

CREATE OR REPLACE VIEW historico_clinica AS (
	SELECT data_consulta, nome_mv, tipo_consulta
	FROM consulta c JOIN medico_veterinario mv ON (c.id_mv = mv.id_mv)
	WHERE tipo_consulta IN ('clínica', 'retorno clínica') and MONTH(data_consulta) = 10 and YEAR(data_consulta) = 2022
);

SELECT * FROM historico_clinica;

-- Historico de todos os atendimentos feitos pela medica veterinaria Thalita de Brito no mês 10/2022

CREATE OR REPLACE VIEW historico_thalita AS (
	SELECT data_consulta, nome_mv, tipo_consulta, valor_pagamento
	FROM consulta c  JOIN medico_veterinario mv ON (c.id_mv = mv.id_mv)
	JOIN pagamento p ON (c.id_pagamento = p.id_pagamento)
	WHERE nome_mv LIKE '%Thalita de Brito%' and MONTH(data_consulta) = 10 and YEAR(data_consulta) = 2022
);

SELECT * FROM historico_thalita;

-- Historico de pacientes que tiveram tratamento receitado 

CREATE OR REPLACE VIEW paciente_tratamento AS (
	SELECT nome_cliente, nome_paciente, peso, nome_remedio, qtd_utilizada FROM consulta c 
    	JOIN paciente p ON (p.id_paciente = c.id_paciente)
    	JOIN cliente l ON (l.id_cliente = p.id_cliente)
    	JOIN tratamento t ON (t.id_consulta = c.id_consulta)
    	JOIN remedio r ON (r.id_tratamento = t.id_tratamento)
    	WHERE tipo_tratamento = "medicamentoso" 
    	ORDER BY nome_cliente
); 
    
SELECT * FROM paciente_tratamento;
