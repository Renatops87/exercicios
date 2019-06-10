
do while .t.
   clear

   cNome := space(20)
   nContador := 0

   @ 01,01 say "Nome: "

   @ 01,07 get cNome picture "@!"
   read

   if lastkey() == 27
      nRespostaSair = alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   clear
   while nContador < 10
      @ nContador + 1,02 say cNome
      nContador++
   end

   @ nContador + 1,01 say "Pressione qualquer tecla para continuar"
   inkey(0)
enddo
