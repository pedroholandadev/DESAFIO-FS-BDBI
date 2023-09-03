CREATE DATABASE concessionaria;
USE concessionaria;

CREATE TABLE carros(
		id VARCHAR(100) PRIMARY KEY,
        marca VARCHAR(100),
        modelo VARCHAR(100) NOT NULL,
        ano INT
        
);

CREATE TABLE estoque(
	disponivel CHAR,
    fornecedor VARCHAR(100),
    id INT
);

CREATE TABLE preço(
	anos_usados VARCHAR(4),
    km_rodados VARCHAR(10000),
    id INT PRIMARY KEY
);

ALTER TABLE carros ADD COLUMN nacional CHAR;
ALTER TABLE estoque ADD COLUMN pecas VARCHAR(100);
ALTER TABLE preço ADD COLUMN batido CHAR;

INSERT INTO
carros(id,marca,modelo,ano,nacional)
VALUES 
('111','ford','sedan','2000','s'),
('112','volkswagen','sedan','2022','n'),
('113','fiat','suv',2005,'s');

INSERT INTO
estoque(disponivel, fornecedor, id, pecas)
VALUES
('s','localiza','222','motor'),
('s','hw motors','333','carburador'),
('n','hatsue','444','carburador');

INSERT INTO
preço(anos_usados,km_rodados,id,batido)
VALUES
('5','10k','123','s'),
('1','1k','145','n'),
('50','500k','167','s');

SELECT * FROM carros;
SELECT * FROM estoque;
SELECT * FROM preço;

SELECT marca FROM carros WHERE ano > 2005;
SELECT disponivel FROM estoque WHERE pecas = 'carburador';
SELECT anos_usados FROM preço WHERE batido = 's'






