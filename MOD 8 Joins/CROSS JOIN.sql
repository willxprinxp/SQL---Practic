-- CROSS JOIN

--Produto Cartesiano => Combina��o um a um de todos os valores de duas ou mais colunas.

SELECT * FROM marcas
SELECT * FROM subcategoria


SELECT
	marca,
	nome_subcategoria
FROM
	marcas CROSS JOIN subcategoria