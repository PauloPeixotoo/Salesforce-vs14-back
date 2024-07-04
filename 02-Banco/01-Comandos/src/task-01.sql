------------------------------------------------------EXERCICIO 1------------------------------------------------------

CREATE TABLE VEM_SER.PESSOA
(
    id_pessoa       NUMBER          NOT NULL,
    nome            VARCHAR2(255) NOT NULL,
    data_nascimento DATE            NOT NULL,
    telefone        VARCHAR2(14), -- +5551999999999
    idade           NUMBER(3) NOT NULL,
    altura          DECIMAL(4, 2)   NOT NULL,
    cpf             CHAR(11) UNIQUE NOT NULL,
    PRIMARY KEY (id_pessoa)
)
------------------------------------------------------EXERCICIO 2------------------------------------------------------

    INSERT ALL
    INTO VEM_SER.PESSOA (ID_PESSOA, NOME, DATA_NASCIMENTO, TELEFONE, IDADE, ALTURA, CPF)
    VALUES (1, 'João Silva', '12/03/1361', '5541997945341', 43, 1.75, '12345678901')
    VALUES (2, 'Maria Oliveira', '30/01/1500', '5541997945342', 32, 1.65, '98765432109')
    VALUES (3, 'Carlos Souza', '10/10/5165', '5541997945343', 49, 1.80, '45678912300')
    VALUES (4, 'Ana Santos', '25/02/1995', '5541997945344', 38, 1.70, '65432198706')
    VALUES (5, 'Paulo Bosco Peixoto', '10-07-1952', '5541997945346', 57, 1.82, '09199763964')
SELECT *
FROM dual;

UPDATE VEM_SER.PESSOA ()
SET IDADE = IDADE = 1;

DELETE
FROM VEM_SER.PESSOA
WHERE ID_PESSOA = 5;

SELECT *
FROM VEM_SER.PESSOA
------------------------------------------------------TASK 01------------------------------------------------------

CREATE TABLE ESTUDANTE
(
    id_estudante    NUMBER  NOT NULL,
    nome            VARCHAR2(200) NOT NULL,
    data_nascimento DATE    NOT NULL,
    nr_matricula    NUMBER(20) NOT NULL,
    ativo           CHAR(1) NOT NULL CHECK (ativo IN ('S', 'N'))
);

CREATE SEQUENCE seq_estudante
    START WITH 1
    INCREMENT BY 1;
NOCACHE
NOCYCLE;

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (nextval('seq_estudante'), 'Alice Ferreira', '2000-01-15', '2021101', 'S'),
       (nextval('seq_estudante'), 'Carlos Pinto', '1999-04-22', '2021102', 'N'),
       (nextval('seq_estudante'), 'Beatriz Silva', '2001-08-30', '2021103', 'S'),
       (nextval('seq_estudante'), 'Diego Costa', '1998-11-05', '2021104', 'S'),
       (nextval('seq_estudante'), 'Elena Rodrigues', '2002-03-14', '2021105', 'N'),
       (nextval('seq_estudante'), 'Fernando Oliveira', '2000-06-21', '2021106', 'S'),
       (nextval('seq_estudante'), 'Gabriela Santos', '1997-09-10', '2021107', 'N'),
       (nextval('seq_estudante'), 'Hugo Almeida', '2001-12-01', '2021108', 'S'),
       (nextval('seq_estudante'), 'Isadora Teixeira', '1999-02-19', '2021109', 'S'),
       (nextval('seq_estudante'), 'José Mendes', '2003-05-23', '2021110', 'N');

SELECT *
FROM ESTUDANTE;