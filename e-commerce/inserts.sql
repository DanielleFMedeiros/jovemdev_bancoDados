INSERT INTO CLIENTE (ID, NOME, SEXO, DATA_NASC, ENDERECO)
VALUES
(1, 'Maria Souza', 'F', '2000-02-11', 1),
(2, 'Pedro Santos', 'M', '1998-03-27', 2);

insert into ENDERECO (ID, RUA, BAIRRO, CIDADE)
values
(1, 'RUA 1', 'CENTRO', 2),
(2, 'RUA 2', 'CENTRO', 3);

insert into CIDADE (ID, NOME, UF)
VALUES
(1, 'TUBARAO', 'SC'),
(2,'CASCAVEL', 'PR'),
(3, 'JAGUARUNA', 'SC'),
(4, 'FLORIANOPOLIS', 'SC'),
(5, 'PORTO ALEGRE', 'RS'),
(6, 'SAO PAULO', 'SP'),
(7, 'SANGAO', 'SC');

insert into TELEFONE (ID, NUMERO, CLIENTE)
values
(1, '48999923654',1),
(2, '48999825653',1),
(3, '43992365478',2);

insert into CATEGORIA(ID, DESCRICAO)
values (1, 'PADARIA'),
(2, 'CARNES'),
(3, 'MERCEARIA'),
(4, 'PETSHOP'),
(5, 'HIGIENE'),
(6, 'LIMPEZA'),
(7, 'HORTIFRUTI'),
(8, 'FRIOS'),
(9, 'BEBIDAS'),
(10, 'PAPELARIA');

INSERT INTO PRODUTO (ID, NOME, VALOR, QTDE, CATEGORIA)
VALUES
(1, 'MACARRAO', 4.72, 10, 3),
(2, 'RACAO', 12.99, 6, 4),
(3, 'ALFACE', 2.99, 6, 7),
(4, 'CANETA BIC', 5.50, 2, 10),
(5, 'PEPSI', 8.99, 10, 9),
(6, 'FRANGO', 25.99,10,2 );

insert into VENDA (ID, DATA_VENDA, CLIENTE)
values
(1, '2023-06-12', 1),
(2, '2023-06-11', 2),
(3, '2023-06-12', 1),
(4, '2023-06-11', 2),
(5, '2023-06-12', 1),
(6, '2023-06-12', 1);

insert into VENDA_PROD(ID, VENDA, PRODUTO, QTDE)
values
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 1, 6, 1),
(4, 1, 5, 2),
(5, 2, 2, 1),
(6, 2, 4, 2);



