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

-- Stored Procedure que retorna paciente que pertence ao cliente inserido

CREATE PROCEDURE `cliente_paciente`(IN cliente VARCHAR(100))
BEGIN
	SELECT nome_cliente, nome_paciente, especie, raca, sexo, pelagem, nascimento_paciente, castrado, peso 
	FROM paciente p JOIN cliente c ON (p.id_cliente = c.id_cliente) 
	WHERE nome_cliente = cliente;
END

-- Ao inserir nome do cliente Patricia Johnson, retorna seu animal, a paciente Belinha e as suas informações 

CALL cliente_paciente('Patricia Johnson');

-- Se inserir nome vazio irá retornar nome de todas as colunas, porém nenhuma informação

CALL cliente_paciente('');
