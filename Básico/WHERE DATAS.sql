-- Filtrando colunas de datas

--Clientes que nasceram após o dia 31/12/1970
SELECT
	*
FROM 
	DimCustomer
WHERE BirthDate >= 'yyyy-mm-dd'

-- y ano, m mês, d dia

SELECT
	FirstName AS 'Nome',
	BirthDate AS 'Aniversário'
FROM
	DimCustomer
WHERE BirthDate >= '1970-12-31'
ORDER BY BirthDate ASC