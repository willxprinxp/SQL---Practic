-- Filtrando colunas de datas

--Clientes que nasceram ap�s o dia 31/12/1970
SELECT
	*
FROM 
	DimCustomer
WHERE BirthDate >= 'yyyy-mm-dd'

-- y ano, m m�s, d dia

SELECT
	FirstName AS 'Nome',
	BirthDate AS 'Anivers�rio'
FROM
	DimCustomer
WHERE BirthDate >= '1970-12-31'
ORDER BY BirthDate ASC