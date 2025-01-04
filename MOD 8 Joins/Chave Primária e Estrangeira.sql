-- Chave Prim�ria e Chave Estrangeira

--Pegaremos como exemplo a tabela DimProduct.
SELECT * FROM DimProduct

/*Temos a coluna ProductKey onde cada valor/�ndice na coluna representa um produto DISTINTO, ou seja, os valores n�o se repetem.
  Isso � um exemplo de Chave Prim�ria.*/
SELECT 
	ProductKey,
	ProductName
FROM
	DimProduct


-- Tomaremos como exemplo a coluna ProductKey da tabela FactSales.
SELECT TOP(1000)* FROM FactSales

/* Podemos ver que a tabela FactSales possui uma Chave Prim�ria chamada SalesKey que � um ID/Chave para cada venda.

  Olhando para a coluna ProductKey que em DimProduct � uma Chave Prim�ria,
  vemos que os valores se repetem, ou seja, nessa tabela a coluna ProductKey � uma Chave Estrangeira.*/
SELECT 
	TOP (1000)*
FROM
	FactSales
WHERE
	ProductKey = 200