clear

nIdade := 0

@ 01,01 say "Digite a sua Idade: "
@ 02,01 get nIdade
read

if nIdade > 21
   @ 04,01 say "Idade maior que 21"
else
   @ 04,01 say "Idade menor que 21"
endif
inkey(0)
