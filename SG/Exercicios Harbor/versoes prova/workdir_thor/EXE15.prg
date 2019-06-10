clear

cNome := space(20)
nContador := 0

@ 01,01 say "Nome: "

@ 01,07 get cNome picture "@!"
read

clear
while nContador < 10
   @ nContador + 1,02 say cNome
   nContador++
end

