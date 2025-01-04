-- INNER JOIN

/* Intercessão do Conjunto A com o Conjunto B, ou seja, criado um [Conjunto C (tabela)]
   onde todos os elementos pertencem tanto ao Conjunto A quanto ao Conjunto B. */

SELECT * FROM produtos
SELECT * FROM subcategoria

SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
INNER JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria