CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome_funcionario VARCHAR(255),
cpf VARCHAR(255),
cargo VARCHAR(255),
salario DECIMAL(8,2),
PRIMARY KEY(id)
);
SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome_funcionario,cpf,cargo,salario) 
VALUES 
("Erica",123123123131,"Dev JR",5000.00),
("jOÃO",4543353434343,"Dev JR",4000.00),
("Ana",4565656565656,"Dev JR",6000.00),
("Maria",787878798998,"Dev JR",7000.00),
("Cladio",9990989787878,"Dev JR",8000.00),
("Mario",765654545455,"TI",1000.00),
("Rafael",787121212112,"TI",1500.00),
("Wallace",	787878443338,"	TI	",1800.00);


SET SQL_SAFE_UPDATES = 0;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 9000 where id = 2;






