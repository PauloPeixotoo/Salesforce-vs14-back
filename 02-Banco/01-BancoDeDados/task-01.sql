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
    id_estudante    NUMBER PRIMARY KEY NOT NULL,
    nome            VARCHAR2(200) NOT NULL,
    data_nascimento DATE NOT NULL,
    nr_matricula    NUMBER(20) NOT NULL,
    ativo           CHAR(1) NOT NULL CHECK (ativo IN ('S', 'N'))
);

CREATE SEQUENCE seq_estudante
START WITH 1
INCREMENT BY 1;
NOCACHE
NOCYCLE;

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Alice Ferreira', TO_DATE('15/01/2000', 'DD/MM/YYYY'), '2021101', 'S');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Carlos Pinto', TO_DATE('22/04/1999', 'DD/MM/YYYY'), '2021102', 'N');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Beatriz Silva', TO_DATE('30/08/2001', 'DD/MM/YYYY'), '2021103', 'S');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Diego Costa', TO_DATE('05/11/1998', 'DD/MM/YYYY'), '2021104', 'S');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Elena Rodrigues', TO_DATE('14/03/2002', 'DD/MM/YYYY'), '2021105', 'N');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Fernando Oliveira', TO_DATE('21/06/2000', 'DD/MM/YYYY'), '2021106', 'S');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Gabriela Santos', TO_DATE('10/09/1997', 'DD/MM/YYYY'), '2021107', 'N');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Hugo Almeida', TO_DATE('01/12/2001', 'DD/MM/YYYY'), '2021108', 'S');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'Isadora Teixeira', TO_DATE('19/02/1999', 'DD/MM/YYYY'), '2021109', 'S');

INSERT INTO ESTUDANTE (id_estudante, nome, data_nascimento, nr_matricula, ativo)
VALUES (seq_estudante.NEXTVAL, 'José Mendes', TO_DATE('23/05/2003', 'DD/MM/YYYY'), '2021110', 'N');

SELECT * FROM ESTUDANTE;
