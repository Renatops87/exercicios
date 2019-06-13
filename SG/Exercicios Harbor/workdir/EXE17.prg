
do while .t.
   clear
   cNome          := space(30)
   cNomeInvertido := ""
   nContador      := 0

   @ 00,00 to 10,55 double

   @ 01,01 say "Nome: "

   @ 01,07 get cNome picture "@!"            // RENATO
   read

    if lastkey() == 27
      nRespostaSair = alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   nTamanhoPalavra := Len(alltrim(cNome))
   nContador       := nTamanhoPalavra

   do while nContador > 0
      cNomeInvertido += substr (alltrim(cNome), nContador, 1)
      nContador--
   enddo

   @ 06,01 say "Nome Invertido: " + cNomeInvertido
   @ 08,01 say "Pressione qualquer tecla para continuar"

   inkey(0)
enddo

