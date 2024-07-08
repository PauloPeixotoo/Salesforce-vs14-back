CREATE USER VEM_SER IDENTIFIED BY oracle;

GRANT CONNECT TO VEM_SER;

GRANT CONNECT, RESOURCE, DBA TO VEM_SER;

GRANT CREATE SESSION TO VEM_SER;

GRANT DBA TO VEM_SER;

GRANT CREATE VIEW, CREATE PROCEDURE, CREATE SEQUENCE TO VEM_SER;

GRANT UNLIMITED TABLESPACE TO VEM_SER;
GRANT CREATE MATERIALIZED VIEW TO VEM_SER;
GRANT CREATE TABLE TO VEM_SER;
GRANT GLOBAL QUERY REWRITE TO VEM_SER;
GRANT SELECT ANY TABLE TO VEM_SER;

CREATE TABLE PAIS(
id_pais NUMBER(38,0) PRIMARY KEY NOT NULL,
nome VARCHAR(50) NOT NULL
);

CREATE TABLE ESTADO(
id_estado NUMBER(38,0) PRIMARY KEY NOT NULL,
nome VARCHAR(50) NOT NULL,
id_pais NUMBER(38,0) NOT NULL,
CONSTRAINT FK_ESTADO_PAIS FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais)
);

CREATE TABLE CIDADE(
id_cidade NUMBER(38,0) PRIMARY KEY NOT NULL,
id_estado NUMBER(38,0) NOT NULL,
nome VARCHAR(50) NOT NULL,
CONSTRAINT FK_CIDADE_ESTADO FOREIGN KEY (id_estado) REFERENCES ESTADO(id_estado)
);

CREATE TABLE BAIRRO(
id_bairro NUMBER(38,0) UNIQUE NOT NULL,
id_cidade NUMBER(38,0) NOT NULL,
id_estado NUMBER(38,0) NOT NULL,
nome VARCHAR2(50) NOT NULL,
CONSTRAINT PK_BAIRRO_CIDADE PRIMARY KEY (id_bairro, id_cidade),
CONSTRAINT FK_BAIRRO_CIDADE FOREIGN KEY (id_cidade) REFERENCES CIDADE(id_cidade),
CONSTRAINT FK_BAIRRO_ESTADO FOREIGN KEY (id_estado) REFERENCES ESTADO(id_estado)
);

CREATE TABLE ENDERECO(
id_endereco NUMBER(38,0) PRIMARY KEY NOT NULL,
id_bairro NUMBER(38,0) NOT NULL,
id_cidade NUMBER(38,0) NOT NULL,
logradouro VARCHAR2(255) NOT NULL,
NUMERO NUMBER(38,0) NOT NULL,
COMPLEMENTO VARCHAR2(100),
CEP CHAR(9),
CONSTRAINT FK_ENDERECO_BAIRRO FOREIGN KEY (id_bairro) REFERENCES BAIRRO(id_bairro),
CONSTRAINT FK_ENDERECO_CIDADE FOREIGN KEY (id_cidade) REFERENCES CIDADE(id_cidade)
);

CREATE SEQUENCE SEQ_PAIS
START WITH 1
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE SEQUENCE SEQ_ESTADO
START WITH 1
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE SEQUENCE SEQ_CIDADE
START WITH 1
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE SEQUENCE SEQ_BAIRRO
START WITH 1
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE SEQUENCE SEQ_ENDERECO
START WITH 1
INCREMENT BY 1
NOCACHE NOCYCLE;

INSERT INTO PAIS (id_pais, nome)
VALUES (SEQ_PAIS.NEXTVAL, 'Brasil');

INSERT INTO PAIS (id_pais, nome)
VALUES (SEQ_PAIS.NEXTVAL, 'Estados Unidos');

-- Estados para Brasil
INSERT INTO ESTADO (id_estado, nome, id_pais)
VALUES (SEQ_ESTADO.NEXTVAL, 'São Paulo', (SELECT id_pais FROM PAIS WHERE nome = 'Brasil'));

INSERT INTO ESTADO (id_estado, nome, id_pais)
VALUES (SEQ_ESTADO.NEXTVAL, 'Rio de Janeiro', (SELECT id_pais FROM PAIS WHERE nome = 'Brasil'));

-- Estados para Estados Unidos
INSERT INTO ESTADO (id_estado, nome, id_pais)
VALUES (SEQ_ESTADO.NEXTVAL, 'California', (SELECT id_pais FROM PAIS WHERE nome = 'Estados Unidos'));

INSERT INTO ESTADO (id_estado, nome, id_pais)
VALUES (SEQ_ESTADO.NEXTVAL, 'New York', (SELECT id_pais FROM PAIS WHERE nome = 'Estados Unidos'));

-- Cidades para São Paulo
INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'São Paulo', (SELECT id_estado FROM ESTADO WHERE nome = 'São Paulo'));

INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'Campinas', (SELECT id_estado FROM ESTADO WHERE nome = 'São Paulo'));

-- Cidades para Rio de Janeiro
INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'Rio de Janeiro', (SELECT id_estado FROM ESTADO WHERE nome = 'Rio de Janeiro'));

INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'Niterói', (SELECT id_estado FROM ESTADO WHERE nome = 'Rio de Janeiro'));

-- Cidades para California
INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'Los Angeles', (SELECT id_estado FROM ESTADO WHERE nome = 'California'));

INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'San Francisco', (SELECT id_estado FROM ESTADO WHERE nome = 'California'));

-- Cidades para New York
INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'New York', (SELECT id_estado FROM ESTADO WHERE nome = 'New York'));

INSERT INTO CIDADE (id_cidade, nome, id_estado)
VALUES (SEQ_CIDADE.NEXTVAL, 'Buffalo', (SELECT id_estado FROM ESTADO WHERE nome = 'New York'));

-- Bairros para São Paulo
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo'), (SELECT id_estado FROM ESTADO WHERE nome = 'São Paulo'), 'Centro');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo'), (SELECT id_estado FROM ESTADO WHERE nome = 'São Paulo'), 'Vila Mariana');

-- Bairros para Campinas
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas'), (SELECT id_estado FROM ESTADO WHERE nome = 'São Paulo'), 'Cambuí');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas'), (SELECT id_estado FROM ESTADO WHERE nome = 'São Paulo'), 'Barão Geraldo');

-- Bairros para Rio de Janeiro
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro'), (SELECT id_estado FROM ESTADO WHERE nome = 'Rio de Janeiro'), 'Copacabana');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro'), (SELECT id_estado FROM ESTADO WHERE nome = 'Rio de Janeiro'), 'Ipanema');

-- Bairros para Niterói
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói'), (SELECT id_estado FROM ESTADO WHERE nome = 'Rio de Janeiro'), 'Icaraí');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói'), (SELECT id_estado FROM ESTADO WHERE nome = 'Rio de Janeiro'), 'Centro');

-- Bairros para Los Angeles
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles'), (SELECT id_estado FROM ESTADO WHERE nome = 'California'), 'Hollywood');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles'), (SELECT id_estado FROM ESTADO WHERE nome = 'California'), 'Beverly Hills');

-- Bairros para San Francisco
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco'), (SELECT id_estado FROM ESTADO WHERE nome = 'California'), 'Chinatown');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco'), (SELECT id_estado FROM ESTADO WHERE nome = 'California'), 'Mission District');

-- Bairros para New York
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'New York'), (SELECT id_estado FROM ESTADO WHERE nome = 'New York'), 'Manhattan');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'New York'), (SELECT id_estado FROM ESTADO WHERE nome = 'New York'), 'Brooklyn');

-- Bairros para Buffalo
INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo'), (SELECT id_estado FROM ESTADO WHERE nome = 'New York'), 'Allentown');

INSERT INTO BAIRRO (id_bairro, id_cidade, id_estado, nome)
VALUES (SEQ_BAIRRO.NEXTVAL, (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo'), (SELECT id_estado FROM ESTADO WHERE nome = 'New York'), 'Elmwood Village');


-- Endereços para Centro em São Paulo
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Centro' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo'), 'Avenida Paulista', 1000, 'Apto 101', '01310-100');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Centro' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo'), 'Rua Augusta', 200, 'Apto 202', '01310-200');

-- Endereços para Vila Mariana em São Paulo
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Vila Mariana' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo'), 'Rua Domingos de Morais', 300, 'Apto 303', '04110-300');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Vila Mariana' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'São Paulo'), 'Rua Vergueiro', 400, 'Apto 404', '04110-400');

-- Endereços para Cambuí em Campinas
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Cambuí' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas'), 'Rua Coronel Quirino', 600, 'Apto 601', '13025-000');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Cambuí' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas'), 'Rua Sampainho', 700, 'Apto 702', '13025-010');

-- Endereços para Barão Geraldo em Campinas
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Barão Geraldo' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas'), 'Avenida Santa Isabel', 800, 'Casa 1', '13084-012');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Barão Geraldo' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Campinas'), 'Rua Rui Barbosa', 900, 'Casa 2', '13084-020');

-- Endereços para Copacabana no Rio de Janeiro
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Copacabana' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro'), 'Avenida Atlântica', 1000, 'Apto 1001', '22021-001');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Copacabana' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro'), 'Rua Barata Ribeiro', 1100, 'Apto 1102', '22051-001');

-- Endereços para Ipanema no Rio de Janeiro
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Ipanema' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro'), 'Rua Visconde de Pirajá', 1200, 'Apto 1203', '22410-001');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Ipanema' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Rio de Janeiro'), 'Rua Farme de Amoedo', 1300, 'Apto 1304', '22420-001');

-- Endereços para Icaraí em Niterói
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Icaraí' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói'), 'Rua Moreira César', 1400, 'Apto 1401', '24230-001');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Icaraí' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói'), 'Avenida Sete de Setembro', 1500, 'Apto 1502', '24230-002');

-- Endereços para Centro em Niterói
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Centro' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói'), 'Rua da Conceição', 1600, 'Apto 1603', '24020-001');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Centro' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Niterói'), 'Rua Visconde do Rio Branco', 1700, 'Apto 1704', '24030-001');

-- Endereços para Hollywood em Los Angeles
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Hollywood' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles'), 'Hollywood Blvd', 1800, 'Apto 1801', '90028');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Hollywood' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles'), 'Sunset Blvd', 1900, 'Apto 1902', '90028');

-- Endereços para Beverly Hills em Los Angeles
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Beverly Hills' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles'), 'Rodeo Drive', 2000, 'Apto 2001', '90210');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Beverly Hills' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Los Angeles'), 'Santa Monica Blvd', 2100, 'Apto 2102', '90210');

-- Endereços para Chinatown em San Francisco
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Chinatown' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco')), (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco'), 'Grant Ave', 2200, 'Apto 2201', '94108');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Chinatown' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco')), (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco'), 'Stockton St', 2300, 'Apto 2302', '94108');

-- Endereços para Mission District em San Francisco
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Mission District' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco')), (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco'), 'Mission St', 2400, 'Apto 2401', '94110');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Mission District' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco')), (SELECT id_cidade FROM CIDADE WHERE nome = 'San Francisco'), 'Valencia St', 2500, 'Apto 2502', '94110');

-- Endereços para Manhattan em New York
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Manhattan' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'New York')), (SELECT id_cidade FROM CIDADE WHERE nome = 'New York'), '5th Ave', 2600, 'Apto 2601', '10001');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Manhattan' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'New York')), (SELECT id_cidade FROM CIDADE WHERE nome = 'New York'), 'Broadway', 2700, 'Apto 2702', '10001');

-- Endereços para Brooklyn em New York
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Brooklyn' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'New York')), (SELECT id_cidade FROM CIDADE WHERE nome = 'New York'), 'Flatbush Ave', 2800, 'Apto 2801', '11201');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Brooklyn' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'New York')), (SELECT id_cidade FROM CIDADE WHERE nome = 'New York'), 'Bedford Ave', 2900, 'Apto 2902', '11201');

-- Endereços para Allentown em Buffalo
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Allentown' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo'), 'Allen St', 3000, 'Apto 3001', '14201');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Allentown' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo'), 'Virginia St', 3100, 'Apto 3102', '14201');

-- Endereços para Elmwood Village em Buffalo
INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Elmwood Village' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo'), 'Elmwood Ave', 3200, 'Apto 3201', '14222');

INSERT INTO ENDERECO (id_endereco, id_bairro, id_cidade, logradouro, numero, complemento, cep)
VALUES (SEQ_ENDERECO.NEXTVAL, (SELECT id_bairro FROM BAIRRO WHERE nome = 'Elmwood Village' AND id_cidade = (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo')), (SELECT id_cidade FROM CIDADE WHERE nome = 'Buffalo'), 'West Ferry St', 3300, 'Apto 3302', '14222');

SELECT * FROM ENDERECO

------------------------------------------------------TASK 02------------------------------------------------------

-- Selecione todos os países ordenados por nome decrescente

SELECT id_pais, nome FROM PAIS ORDER BY nome DESC;

-- Selecionar loradouro e cep dos endereços, Porem os logradouros que comecem com a letra 'a'(maiúsculo ou minúsculo)

SELECT logradouro, cep FROM ENDERECO WHERE logradouro LIKE 'A%' OR logradouro LIKE 'a%';

-- Selecionar todos os endereços que tenham cep com final '0';

SELECT * FROM ENDERECO WHERE cep LIKE '%0';

-- Selecionar todos os endereços que tenham números entre 1 e 100;

SELECT * FROM ENDERECO WHERE numero BETWEEN 1 AND 100;

-- Selecionar todos os endereços que comecem por "RUA" e ordenar pelo cep de forma decrescente;

SELECT * FROM ENDERECO WHERE logradouro LIKE 'Rua%' OR logradouro LIKE 'RUA%' ORDER BY cep DESC;

-- Selecionar a quantidade de endereços cadastrados na tabela;

SELECT COUNT(*) AS quantidade_enderecos FROM ENDERECO;

-- Selecionar a quantidade de endereços cadastrados agrupados pelo id da cidade;

SELECT id_cidade, COUNT(*) AS quantidade_enderecos FROM ENDERECO GROUP BY id_cidade;


