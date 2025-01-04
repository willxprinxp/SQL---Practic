-- LEFT, RIGHT, E FULL "ANTI" JOIN

-- Usar o "ANTI" JOIN no SQL é uma alternativa de condição pós análise, já que a função ANTI não existe.
-- Isso significa que usamos um tratamento diferente para cada situação.

--Exemplos:

--LEFT (ANTI) JOIN
/*Exclusão dos Elementos do [Conjunto A (Esquerda)] que pertencem a B + 
  Exclusão dos Elementos do [Conjunto B (Direita)].*/
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
--Após análise, esse seria o único elemento que não pertence a NENHUMA das exclusões.
WHERE nome_subcategoria IS NULL 


--RIGHT (ANTI) JOIN
/*Exclusão dos Elementos do [Conjunto B (Direita)] que pertencem a A +
  Exclusão dos Elementos do [Conjunto A (Esquerda)]. */
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE id_produto IS NULL -- Após Análise


-- FULL (ANTI) JOIN
-- Exclusão dos Elementos que estão na [Intercessão (Meio)] dos Conjuntos A e B.
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL OR nome_subcategoria IS NULL --Após Análise