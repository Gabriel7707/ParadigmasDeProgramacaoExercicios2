-- EXERCICIOS DE PARADIGMAS :)

-- ****************************************************************
  {- 1) Escreva uma função hasEqHeads :: [Int] -> [Int] -> Bool 
   que verifica se as 2 listas possuem o mesmo primeiro elemento.-}

hasEqHeads :: [Int] -> [Int ] -> Bool
hasEqHeads [] [] = True 
hasEqHeads (a:b) (c:d) | a == c = True
					   | otherwise = False

-- ****************************************************************
	{-
	 3) Escreva uma função recursiva add10, que adicione a 
	constante 10 a cada elemento de uma lista, produzindo outra lista.
	-}

add10 :: [Int] -> [Int]
add10 [] = []
add10 n = (head n)+10 : add10 (tail n)

			--- ahhh entendi o pq q era pra observar o nr 2 hehe 

-- ****************************************************************	
	{-
	 4) Escreva uma função recursiva addComma, que adicione
	uma vírgula no final de cada string contida numa lista.
	Dica: (1) Strings são listas de caracteres. 
	(2) Para concatenar listas, use o operador ++. -}

addComma :: [String] -> [String]
addComma [] = []   
addComma (x:xs) = (x++",") : addComma xs

			-- prefiro assim do q escrever head e tail so o (x:xs)
	 		-- devono observar p 2 foi fundamental. hehe

-- ****************************************************************

	{-
	 5) Refaça os 2 exercícios anteriores usando 
	a função de alta ordem 'map'.-}

add10_map :: [Int] -> [Int]
add10_map [] = []
add10_map n = map(+10) n

addComma_map :: [String] -> [String]
addComma_map [] = []  
addComma_map x  = map(++",")x
			 
			 -- nao curti fase assim , nao teve graça ,
			 -- sei la parece meio morto , nem pensei pra fase haha

-- ****************************************************************

{-	 6) Crie uma função htmlListItems :: [String] -> [String], 
	 que receba uma lista de strings e retorne outra lista contendo 
	 as strings formatadas como itens de lista em HTML.  Dica:
	 use map e defina uma função auxiliar a ser aplicada a cada elemento. -}

htmlListItems :: [String] -> [String]
htmlListItems [] = []
htmlListItems x = map(++"</LI>") x

 -- *********************************** nao cosegui adicionar no inicio

      {- 7) Crie uma função recursiva charFound :: Char -> String -> Bool, 
      que verifique se o caracter (primeiro argumento) está contido 
      na string (segundo argumento). -} 

charFound :: Char -> String -> Bool
charFound _ [] = False
charFound c (x:xs) | x == c = True
				   | otherwise = charFound c xs


-- ********************************************************************

	   {-8) Reescreva a função anterior sem recursão, 
        usando outras funções pré-definidas já vistas em aula.-}

charFound_2 :: Char -> String -> Bool
charFound_2 _ [] = False
charFound_2 c x | filter (==c) x == [] = False
				| otherwise = True

-- ********************************************************************

		{-9)Use a função de alta ordem 'zipWith' para produzir uma função
		 que obtenha as diferenças, par a par, dos elementos de duas listas. 
		 Por exemplo: para listas de entrada [1,2,3,4] e [2,2,1,1], 
		 o resultado será [-1,0,2,3].-}
		 -- deu mais trabalho em fazer o enunciado do q fazer a função hehe :)

diferenca :: [Int]->[Int]->[Int]
diferenca xa [] = xa
diferenca [] xb = xb
diferenca a b = zipWith(-) a b 

-- **********************************************************************

{-Funções de alta ordem
Use funções de alta ordem para criar novas funções que resolvam os problemas abaixo: -}

-- ****************************************************************************

		{-1) Dada uma lista de números, calcular 2*n+1 para cada número n 
		contido na lista.-}

aux :: [Int] -> [Int]
aux [] = []
aux x  = map(2*) x

conta1 :: [Int]->[Int]
conta1 [] = [] 
conta1 n = map(+1) ( aux n)


