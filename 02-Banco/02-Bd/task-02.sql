SELECT id_pais, nome FROM PAIS ORDER BY nome DESC;

SELECT logradouro, cep FROM ENDERECO WHERE logradouro LIKE 'A%' OR logradouro LIKE 'a%';

SELECT * FROM ENDERECO WHERE cep LIKE '%0';

SELECT NUMERO FROM ENDERECO;

SELECT * FROM ENDERECO WHERE numero BETWEEN 1 AND 100;


SELECT * FROM ENDERECO WHERE logradouro LIKE 'Rua%' OR logradouro LIKE 'RUA%' ORDER BY cep DESC;

SELECT COUNT(*) AS quantidade_enderecos FROM ENDERECO;

SELECT id_cidade, COUNT(*) AS quantidade_enderecos FROM ENDERECO GROUP BY id_cidade;