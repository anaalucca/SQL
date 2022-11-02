-- Retorna 'tipo de consulta, nome paciente, nome cliente' de acordo com data, hora e medico veterinário da consulta

CREATE FUNCTION `consulta_marcada` (data DATE, hora VARCHAR (5), id INT)
RETURNS VARCHAR (100)
READS SQL DATA
BEGIN
	RETURN (SELECT CONCAT('', tipo_consulta, ', paciente ', nome_paciente, ', cliente ', nome_cliente)
	FROM consulta c JOIN paciente p ON (c.id_paciente = p.id_paciente) JOIN cliente l ON (p.id_cliente = l.id_cliente)
	WHERE data_consulta = data and hora_consulta = hora and id_mv = id);
END 

-- Exemplo SELECT consulta_marcada ('2022-10-10', '18:00', 2);
