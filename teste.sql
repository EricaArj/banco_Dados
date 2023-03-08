-- comando para criação de banco de dados
CREATE DATABASE db_quitanda;

-- comando que indica ao maysql workbench o banco de dados
USE db_quitanda;

-- Criado tabela
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255),
-- 6 no total e 2 depois da vigular
preco DECIMAL(6,2),
-- OUTRA FORMA INDICA DE INFORMA  CHAVE PRIMARIA
PRIMARY KEY(id)
);
-- ENCONTRE TODOS OS DADOS DA TABELA PRODUTOS BUSCAR AS INFORMAÇÕES
SELECT * FROM tb_produtos;

-- INSERIR DADOS


INSERT INTO tb_produtos(nome_produto,preco) 
VALUES ("Maçã",3.00), ("Banana",10.00),("Manga",5.00),("Abacate",8.00);

-- desativa o modo seguro do mysql e permitir update e delete
SET SQL_SAFE_UPDATES = 0;

-- Atualizar dados dentro da tabela update sempre com where.

 UPDATE tb_produtos SET preco = 7.90 where id = 2;
 SELECT * FROM tb_produtos;



