-- LEFT, RIGHT, E FULL "ANTI" JOIN

-- Usar o "ANTI" JOIN no SQL � uma alternativa de condi��o p�s an�lise, j� que a fun��o ANTI n�o existe.
-- Isso significa que usamos um tratamento diferente para cada situa��o.

--Exemplos:

--LEFT (ANTI) JOIN
/*Exclus�o dos Elementos do [Conjunto A (Esquerda)] que pertencem a B + 
  Exclus�o dos Elementos do [Conjunto B (Direita)].*/
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
--Ap�s an�lise, esse seria o �nico elemento que n�o pertence a NENHUMA das exclus�es.
WHERE nome_subcategoria IS NULL 


--RIGHT (ANTI) JOIN
/*Exclus�o dos Elementos do [Conjunto B (Direita)] que pertencem a A +
  Exclus�o dos Elementos do [Conjunto A (Esquerda)]. */
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE id_produto IS NULL -- Ap�s An�lise


-- FULL (ANTI) JOIN
-- Exclus�o dos Elementos que est�o na [Intercess�o (Meio)] dos Conjuntos A e B.
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
	id_produto IS NULL OR nome_subcategoria IS NULL --Ap�s An�lise