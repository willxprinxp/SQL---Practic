--Verificando se há 2517 produtos cadastrados na base do banco de dados. 1A

SELECT
	*
FROM DimProduct

SELECT DISTINCT
	ProductKey
FROM DimProduct


-- A última chave de produto é 2517, ou seja, existem 2517 produtos cadastrados.



--verificar se o número de clientes aumentou ou reduziu de 19500.1B

SELECT
	*
FROM
	DimCustomer

SELECT DISTINCT
	CustomerKey
FROM
	DimCustomer

-- A última chave de cliente é 19036, ou seja, o número de clientes reduziu.
-- O número de linhas do output é 18869, ou seja, o número de clientes reduziu.




--2A 2B

SELECT
	CustomerKey AS CHAVE,
	FirstName AS 'Primeiro Nome',
	EmailAddress AS EMAIL,
	BirthDate AS ANIVERSÁRIO
FROM
	DimCustomer




--3A

SELECT
	TOP(100)*
FROM
	DimCustomer


--3B

SELECT 
	TOP (20) PERCENT*
FROM 
	DimCustomer


--3C 3D

SELECT
	TOP (100)
	FirstName AS NOME,
	EmailAddress AS EMAIL,
	BirthDate AS ANIVERSARIO
FROM
	DimCustomer



--4 

SELECT
	DISTINCT Manufacturer AS FORNECEDORES
FROM
	DimProduct



--5

SELECT
	*
FROM DimProduct
--Temos ao todo 2517 produtos.

SELECT
	TOP (1000)*
FROM
	FactSales


SELECT
	DISTINCT ProductKey
FROM
	FactSales

--Temos vendas de apenas 2516 produtos diferentes, ou seja, um produto ainda não foi vendido.