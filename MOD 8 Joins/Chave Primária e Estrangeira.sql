-- Chave Primária e Chave Estrangeira

--Pegaremos como exemplo a tabela DimProduct.
SELECT * FROM DimProduct

/*Temos a coluna ProductKey onde cada valor/índice na coluna representa um produto DISTINTO, ou seja, os valores não se repetem.
  Isso é um exemplo de Chave Primária.*/
SELECT 
	ProductKey,
	ProductName
FROM
	DimProduct


-- Tomaremos como exemplo a coluna ProductKey da tabela FactSales.
SELECT TOP(1000)* FROM FactSales

/* Podemos ver que a tabela FactSales possui uma Chave Primária chamada SalesKey que é um ID/Chave para cada venda.

  Olhando para a coluna ProductKey que em DimProduct é uma Chave Primária,
  vemos que os valores se repetem, ou seja, nessa tabela a coluna ProductKey é uma Chave Estrangeira.*/
SELECT 
	TOP (1000)*
FROM
	FactSales
WHERE
	ProductKey = 200