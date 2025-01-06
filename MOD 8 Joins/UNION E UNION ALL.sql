-- UNION E UNION ALL

-- Imagine que temos duas tabelas uma apenas com o g�nero feminino e outra apenas como g�nero masculino
-- Quando adicionamos UNION ou UNION ALL no meio delas conseguimos a uni�o dos dados dessas tabelas. 

-- 1�
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


--2�
SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE Gender = 'F'

UNION ALL -- N�O REMOVE DADOS DUPLICADOS

SELECT
	FirstName,
	BirthDate
FROM
	DimCustomer
WHERE Gender = 'M'