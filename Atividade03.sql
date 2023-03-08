CREATE DATABASE db_escola;
USE db_ecommerce;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome_aluno VARCHAR(255),
turno_aula VARCHAR(255),
numero_sala INT,
matricula INT,
nota DECIMAL(6,2),
PRIMARY KEY(id)
);
SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome_aluno,turno_aula,numero_sala,matricula,nota) 
VALUES 
("Mariana","Tarde",1001,4323,8.0),
("Pedro","Tarde",1001,4443,3.0),
("Luis","Tarde",1001,4113,5.0),
("Rita","Tarde",1001,4663,9.0);


SET SQL_SAFE_UPDATES = 0;

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 8.0 where id = 2;
