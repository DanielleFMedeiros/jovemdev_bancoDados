--#8
select 
	CIDADE.nome as CIDADE,
	CLIENTE.NOME
from 
	cidade
inner join ENDERECO on
	ENDERECO.CIDADE = CIDADE.ID
	and CIDADE.NOME = 'JAGUARUNA'
inner join CLIENTE on
	CLIENTE.endereco = endereco.ID;
    
--#9
select 
	CLIENTE.nome,
	VENDA.data_venda,
	PRODUTO.NOME as PRODUTO,
	VENDA_PROD.qtde
from 
	VENDA
inner join CLIENTE on
	CLIENTE.id = VENDA.cliente
	and CLIENTE.NOME = 'Maria Souza'
inner join VENDA_PROD on
	VENDA_PROD.id = VENDA.ID
inner join PRODUTO on
	PRODUTO.ID = VENDA.id;
    
--#10
SELECT 
    P.nome, C.DESCRICAO
FROM
    categoria c
        LEFT JOIN
    produto p ON c.id = p.id;

--#11
SELECT 
    categoria.descricao AS categoria,
    SUM(venda_prod.qtde) AS total_vendido
FROM
    venda_prod
        JOIN
    produto ON produto.id = venda_prod.produto
        JOIN
    categoria ON categoria.id = produto.categoria
GROUP BY categoria.descricao;

--#12

SELECT DATE(data_venda) AS data, COUNT(*) AS total_vendas
FROM venda
WHERE data_venda BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY DATE(data_venda);

--#13
SELECT 
    c1.nome, venda.data_venda, produto.nome, telefone.NUMERO
FROM
    venda
        INNER JOIN
    cliente c1 ON c1.id = venda.cliente
        INNER JOIN
    venda_prod ON venda_prod.venda = venda.id
        INNER JOIN
    produto ON produto.id = venda_prod.produto
        INNER JOIN
    cliente c2 ON c2.id = c1.id
        INNER JOIN
    telefone ON telefone.id = c2.id
WHERE
    data_venda = '2023-06-12';