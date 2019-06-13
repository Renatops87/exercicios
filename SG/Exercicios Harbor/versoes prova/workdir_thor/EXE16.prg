clear

cNome       := space(20)
nQuantidade := 0
nContador   := 0

@ 01,01 say "Nome: "
@ 02,01 say "Quantidade de Repeticoes do nome: "

@ 01,07 get cNome       picture "@!"
@ 02,35 get nQuantidade picture "99" valid nQuantidade > 0
read

inkey(5)

clear
@01,01 to 20,40 double color "BG+/B"
while nContador < nQuantidade
   @ nContador + 1,02 say cNome
   nContador++
end

