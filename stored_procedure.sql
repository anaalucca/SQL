-- Stored Procedure que retorna as consultas de determinado veterinário de acordo com seu id

CREATE PROCEDURE `consultas_vet` (IN id INT)
BEGIN 
	IF id IN (1,2,3,4) THEN
		SELECT * FROM consulta WHERE consulta.id_mv = id;
	ELSE 
		SELECT 'ERRO: não existe medico veterinário com esse id' AS aviso;	
	END IF;
END

-- Retorna todas as consultas de acordo com o id_mv solicitado se ele for 1, 2, 3 ou 4

CALL consultas_vet (1);

-- Retorna mensagem de aviso caso id_mv não seja 1, 2, 3 ou 4

CALL consultas_vet (7); 

-----------------------------------------------------------------------------------------------------

-- Stored Procedure que retorna o histórico de consultas de acordo com o tipo de consulta

CREATE PROCEDURE `historico_tipoConsulta` (IN tipo_consulta VARCHAR(30))
BEGIN
	IF tipo_consulta IN ('dermatologia', 'clínica', 'ortopedia') THEN
		(SELECT data_consulta, nome_mv, tipo_consulta, valor_pagamento
		FROM consulta c JOIN medico_veterinario mv ON (c.id_mv = mv.id_mv)
        JOIN pagamento p ON (c.id_pagamento = p.id_pagamento)
		WHERE tipo_consulta = tipo_consulta);
	ELSE
		SELECT 'ERRO: TIPO DE CONSULTA NÃO REGISTRADO' AS msg;
	END IF;
END

CALL historico_tipoConsulta('dermatologia');

CALL historico_tipoConsulta('clínica');

CALL historico_tipoConsulta('cardiologia');

-- Na última call retorna mensagem dizendo que este tipo de consulta nao foi registrado ainda