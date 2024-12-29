-- Exercícios de Fixação Where, AND, OR, Where Not

--1. Selecione todas as linhas da tabela DimEmployee de funcionários do sexo feminino e do departamento de finanças.

SELECT
	*
FROM
	DimEmployee
WHERE
	Gender = 'F' AND DepartmentName = 'Finance'


--2. Selecione todas as linhas da tabela DimProduct de produtos da marca Contoso e da cor vermelha e que tenham um UnitPrice maior ou igual a $100.

SELECT
	*
FROM
	DimProduct
WHERE 
	BrandName = 'Contoso' and ColorName = 'Red' and UnitPrice >= 100


--3. Selecione todas as linhas da tabela dimProduct com produtos da marca Litware OU da marca Fabrikam OU da cor Preta.	   

SELECT
	*
FROM
	DimProduct
WHERE
	BrandName = 'Litware' or BrandName = 'Fabrikam' or ColorName = 'Black'



--4. Selecione todas as linhas da tabela DimSalesTerritory onde o continente é a Europa mas o país NÃO é a Itália.

SELECT
	*
FROM
	DimSalesTerritory
--WHERE NOT SalesTerritoryCountry = 'Italy' and SalesTerritoryGroup = 'Europe'
--ou
WHERE SalesTerritoryGroup = 'Europe' and not SalesTerritoryCountry = 'Italy'
