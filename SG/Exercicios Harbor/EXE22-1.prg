do while .t.
   clear
   nValorMesada    := 0
   nValorCompra    := 0
   nLinha          := 7

   @ 00,00 to 24,78

   @ 01,01 say "Digite o valor da Mesada: "
   @ 01,27 get nValorMesada picture "@E 9,999.99" valid nValorMesada >= 0
   read

   if lastkey() == 27
      nRespostaSair := alert("Deseja Sair do Programa?",{"Sim","Nao"},"b/gr+")
      if nRespostaSair == 1
         exit
      endif
      loop
   endif

   nValorFaltante := nValorMesada
   do while .t.
      nValorCompra := 0

      @ 20,01 clear to 20,72
      @ nLinha,01 say "Valor da compra: "
      @ nLinha,18 get nValorCompra picture "@E 9,999.99" valid nValorCompra > 0
      read

      if lastkey() == 27
         nRespostaSair := alert("Deseja parar as compras??",{"Sim","Nao"},"b/gr+")
         if nRespostaSair == 1
            exit
         endif
         loop
      endif

      if nValorCompra > nValorFaltante
         @ 20,02 say "Valor Inválido! Pressione qualquer tecla para continuar!"
         inkey(0)
         loop
      endif

      nValorFaltante -= nValorCompra

      if (nValorFaltante == 0)
         exit
      endif

      @ 05,01 say "Valor restante: " + Transform( nValorFaltante, "@E 9,999.99" )
      nLinha++
   enddo

   @ 19,01 say "Gastou toda a mesada"
   inkey(0)
enddo