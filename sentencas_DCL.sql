-- Banco de dados do sistema que mostra informações de usuários 
USE mysql;
SELECT * FROM user;

-- Banco de dados (schema) a ser usado 
USE clinica_vet; 

-- Criação do usuário 1
CREATE USER 'anaoliveira'; 

-- Criação do usuário 2, desta vez identificando seu domínio como localhost e uma senha para seu acesso
CREATE USER 'ana'@'localhost' IDENTIFIED BY 'coderhouse';

-- Concede permissão de fazer apenas leitura sobre todas as tabelas do schema clinica_vet através do SELECT
GRANT SELECT ON *.* TO 'anaoliveira';

-- Mostra permissão concedida ao user 'anaoliveira'
SHOW GRANTS FOR 'anaoliveira';

-- Concede permissão de leitura, inserção e modificação de dados no schema clinica_vet através de SELECT, INSERT e UPDATE
GRANT SELECT, INSERT, UPDATE ON *.* TO 'ana'@'localhost';

-- Mostra permissões concedidas ao user 'ana'@'localhost'
SHOW GRANTS FOR 'ana'@'localhost';
