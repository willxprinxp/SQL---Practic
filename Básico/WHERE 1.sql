-- WHERE

/*Para acharmos o maior pre�o com o oque conhecemos antes do Where podemos usar TOP(N) e ORDER BY*/

SELECT
	TOP(1) UnitPrice
FROM
	DimProduct
ORDER BY UnitPrice DESC



--Mas e para descobrirmos, por exemplo, quantos produtos tem pre�o unit�rio maiores que 1000?
-- Com WHERE

SELECT
	ProductName AS 'Produto',
	UnitPrice AS 'Pre�o'
FROM
	DimProduct
WHERE UnitPrice >= 1000
