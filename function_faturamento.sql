-- Retorna o total do faturamento da clínica até o momento no banco de dados = 5975

CREATE FUNCTION `faturamento` ()
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE total FLOAT;
	SET total = (SELECT SUM(valor_pagamento) FROM pagamento);
	RETURN total;
END

-- Exemplo: SELECT faturamento();