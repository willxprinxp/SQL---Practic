--Verificando se h� 2517 produtos cadastrados na base do banco de dados. 1A

SELECT
	*
FROM DimProduct

SELECT DISTINCT
	ProductKey
FROM DimProduct


-- A �ltima chave de produto � 2517, ou seja, existem 2517 produtos cadastrados.



--verificar se o n�mero de clientes aumentou ou reduziu de 19500.1B

SELECT
	*
FROM
	DimCustomer

SELECT DISTINCT
	CustomerKey
FROM
	DimCustomer

-- A �ltima chave de cliente � 19036, ou seja, o n�mero de clientes reduziu.
-- O n�mero de linhas do output � 18869, ou seja, o n�mero de clientes reduziu.




--2A 2B

SELECT
	CustomerKey AS CHAVE,
	FirstName AS 'Primeiro Nome',
	EmailAddress AS EMAIL,
	BirthDate AS ANIVERS�RIO
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

--Temos vendas de apenas 2516 produtos diferentes, ou seja, um produto ainda n�o foi vendido.