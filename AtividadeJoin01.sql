CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
classe_id BIGINT AUTO_INCREMENT,
tipo_personagens  VARCHAR(255),
arma VARCHAR(255),
historia VARCHAR(255),
dificuldade_jogo VARCHAR(30),

PRIMARY KEY(classe_id)
);


ALTER TABLE tb_classe
ADD dificuldade_jogo VARCHAR(30);


CREATE TABLE tb_personagens(
personagens_id BIGINT AUTO_INCREMENT,
nome VARCHAR(200),
classe INT,
cura INT,
defesa INT,
velocidade INT,

PRIMARY KEY(personagens_id),
FOREIGN KEY (classe) REFERENCES tb_classe(classe_id)
);

ALTER TABLE tb_personagens
ADD classe INT;

ALTER TABLE tb_personagens MODIFY classe VARCHAR(200);

SELECT * FROM tb_personagens;

SELECT * FROM tb_classe;

INSERT INTO tb_classe(tipo_personagens,arma,historia,dificuldade_jogo) 
VALUES 
("Guerreiro","MACHADO","Os Guerreiros são a classe mais amada entre os jogadores","Hard "),
("Arqueiro","ARCO DE LUZ","Os Guerreiros são a classe mais amada entre os jogadores","Easy"),
("Mago","CAJADO DE FOGO","Os Guerreiros são a classe mais amada entre os jogadores","Medium"),
("Assassino","DUPLAS ESPADAS","Os Guerreiros são a classe mais amada entre os jogadores","Easy"),
("Clérigo","CAJADOS","são voltadas para o grupo como curas, buffs, expurgos de debuffs e ressurreições","Medium");


INSERT INTO tb_personagens(nome,classe,cura,defesa,velocidade,ataque) 
VALUES 
("Wallace",1,1500,1000,2000),
("Gohan",2,1000,1500,2500),
("Ochaco Uraraka",3,500,2000,5000),
("Chihiro",4,1000,2300,3000),
("Nezuko",5,900,1700,2400);

UPDATE tb_personagens SET ataque = 1500 where personagens_id = 1;

SELECT * FROM tb_personagens;

SELECT ataque FROM tb_personagens WHERE ataque > 2000;

SELECT nome FROM tb_personagens WHERE nome LIKE "C%"; 

SELECT nome,ataque FROM tb_personagens WHERE ataque BETWEEN 1000  AND  2000; 

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classe = tb_classe.classe_id;

SELECT tb_personagens.nome,tb_personagens.ataque,tb_classe.tipo_personagens
 as classe FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.classe = tb_classe.classe_id WHERE tb_classe.tipo_personagens ="Guerreiro";


