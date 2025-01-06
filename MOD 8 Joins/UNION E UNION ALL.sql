-- UNION E UNION ALL

-- Imagine que temos duas tabelas, uma apenas com o gênero feminino e outra apenas como gênero masculino.
-- Quando adicionamos UNION ou UNION ALL no meio delas conseguimos a união dos dados dessas tabelas. 

-- 1ª
SELECT
	*
FROM
	DimCustomer
WHERE Gender = 'F'

UNION -- REMOVE DADOS DUPLICADOS

SELECT
	*
FROM
	DimCustomer
WHERE Gender = 'M'


--2ª
SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE Gender = 'F'

UNION ALL -- NÃO REMOVE DADOS DUPLICADOS

SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE Gender = 'M'