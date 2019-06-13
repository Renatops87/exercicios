clear

nNumero1 := 0
nNumero2 := 0
nNumero3 := 0
cNome    := space(50)

@ 01,01 to 13,77
@ 02,02 say "Digite o nome do aluno: "
@ 03,02 say "Primeira Nota: "
@ 04,02 say "Segunda Nota: "
@ 05,02 say "Terceira Nota: "

@ 02,26 get cNome picture "@!"
@ 03,17 get nNumero1 picture "999.99"
@ 04,17 get nNumero2 picture "999.99"
@ 05,17 get nNumero3 picture "999.99"
read

nMedia := (nNumero1 + nNumero2 + nNumero3)/3

@ 08,02 say replicate("-",74)
@ 08,02 clear to 07,69
@ 10,02 say "Media do Aluno:  "+alltrim(str(nMedia))
@ 12,02 say "Pressione qualquer tecla para finalizar"

@ 14,02 say ""
inkey(0)
