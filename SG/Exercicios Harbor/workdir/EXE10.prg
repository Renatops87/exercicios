
do while .t.
   clear

   nIdade := 0

   @ 01,01 say "Digite a sua Idade: "

   @ 02,01 get nIdade picture "999" valid nIdade > 0
   read

   if lastkey() == 27
      nRespostaSair = alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   if nIdade > 21
      @ 04,01 say "Idade maior que 21"
   else
      @ 04,01 say "Idade menor que 21"
   endif

   @ 06,01 say "Pressione qualquer tecla para continuar"
   inkey(0)

enddo
