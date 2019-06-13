set message to 20 center
do while .t.
   clear

   @ 01,01 prompt "Cadastrar " message "Cadastrar nomes e pesos"
   @ 01,13 prompt "Sair      " message "Sair do programa"

   menu to nOpcaoMenu
   if nOpcaoMenu == 2
      exit
   elseif nOpcaoMenu == 1
      clear

      cNomeAtleta    := space(20)
      cNomeMaisGordo := ""
      cNomeMaisMagro := ""
      nContador      := 1
      nPeso          := 0
      nPesoMaisGordo := 0
      nPesoMaisMagro := 0
      nLinha         := 1

      if lastkey() == 27
         nRespostaSair := alert("Deseja Sair",{"Sim","Nao"})
         if nRespostaSair == 1 
            exit
         elseif nRespostaCancelar == 2 .or. nRespostaCancelar == 0
            loop
         endif
      endif       

      do while nContador <= 6
         cNomeAtleta    := space(20)
         nPeso          := 0

         @ nContador + 2,01 say "Digite o Nome: "
         @ nContador + 2,36 say "Digite o Peso: "

         @ nContador + 2,16 get cNomeAtleta picture "@!"     valid !empty(cNomeAtleta)
         @ nContador + 2,50 get nPeso       picture "999.99" valid nPeso > 0
         read

         if lastkey() == 27
            nRespostaCancelar := alert("Deseja Cancelar a Digitacao?",{"Sim","Nao"})
            if nRespostaCancelar == 1 
               exit
            elseif nRespostaCancelar == 2 .or. nRespostaCancelar == 0
               loop
            endif
         endif

         if nContador == 1
            nPesoMaisGordo := nPeso
            nPesoMaisMagro := nPeso
         endif

         if nPeso > nPesoMaisGordo
            nPesoMaisGordo := nPeso
            cNomeMaisGordo := cNomeAtleta
         endif

         if nPeso < nPesoMaisMagro
            nPesoMaisMagro := nPeso
            cNomeMaisMagro := cNomeAtleta
         endif

         nContador++
      enddo

      @ 14,02 say "Nome Mais Gordo: " + cNomeMaisGordo
      @ 15,02 say "Peso Mais Gordo: " + alltrim(str(nPesoMaisGordo))
      @ 17,02 say "Nome Mais Magro: " + cNomeMaisMagro
      @ 18,02 say "Peso Mais Magro: " + alltrim(str(nPesoMaisMagro))

      inkey (0)
   endif
enddo




