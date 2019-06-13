clear

do while .t.

   cNome       := space(20)
   nQuantidade := 0
   nContador   := 1
   nLinha      := 0

   clear
   @ 01,01 say "Digite a Palavra a ser repetida: "
   @ 03,01 say "Quantidade de Repeticoes do nome: "

   @ 01,35 get cNome       picture "@!"
   @ 03,35 get nQuantidade picture "999" valid nQuantidade > 0
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      endif
   endif

   @ 05,01 say "Aguarde... "
   inkey(3)

   clear
   @ 00,00 to 03,79
   @ 00,00 to 24,79
   @ 02,32 say "AREA DE REPETICAO"
   do while nContador <= nQuantidade
      @ nLinha + 4,02 say alltrim(str(nContador))
      @ nLinha + 4,05 say cNome

      if nLinha == 15
         @ nLinha + 5, 05 say "Pressione para continuar"
         inkey(0)
         clear
         @ 00,00 to 03,79
         @ 00,00 to 24,79
         @ 02,32 say "AREA DE REPETICAO"
         nLinha := 0
         loop
      else
         nLinha++
      endif
      nContador++
   enddo
   @ nLinha + 6, 02 say "Pressione qualquer tecla para nova repeticao!"
   inkey(0)
enddo

