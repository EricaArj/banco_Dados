CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
marca VARCHAR(255),
categoria VARCHAR(255),
quantidade INT,
valor DECIMAL(7,2),
PRIMARY KEY(id)
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto,marca,categoria,quantidade,valor) 
VALUES 
("Fones","Samsung fone prento","Eletronicos",5,100.00),
("Cabos","Carregador de Celulares","Eletronicos",20,50.00),
("Smartphones","iPhone 11 Apple 64GB branco","Eletronicos",1,6000.00),
("Smartphones","Samsung Galaxy A13 Preto","Eletronicos",10,3000.00);


SET SQL_SAFE_UPDATES = 0;

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 80 where id = 2;
