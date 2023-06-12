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

select
	PRODUTO.nome as NOME_PROD, CATEGORIA.descricao
from
	PRODUTO
inner join categoria  on PRODUTO.ID  = categoria.id;