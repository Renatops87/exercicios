algoritmo "raizquadrada"
Var
	A, B, C: Inteiro
	S: Caractere
Inicio
	Escreva ("Primeiro jogador - digite 0 ou 1: ")
	Leia (A)
	Escreva ("Segundo jogador - digite 0 ou 1: ")
	Leia (B)
	Escreva ("Terceiro jogador - digite 0 ou 1: ")
	Leia (C)
	Se (A = B) e (B = C) entao
		Escreva (" * ")
	Senao
		Se (A = B) entao
			Escreva (" C ")
		Senao
			Se (B = C) entao
				Escreva (" A ")
			Senao
				Escreva (" B ")
			Fimse
		Fimse
	Fimse
Fimalgoritmo