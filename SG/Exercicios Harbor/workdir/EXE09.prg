
do while .t.

   clear

   set date to british
   set epoch to 1940

   cLetra   := space(1)
   dData    := cTod("")
   nInteiro := 0
   nDecimal := 0
   cPalavra := space(30)


   @01,01 to  13,60 double
   @03,03 say "Digite uma letra: "
   @05,03 say "Digite uma data: "
   @07,03 say "Digite um numero inteiro: "
   @09,03 say "Digite um numero com casas decimais: "
   @11,03 say "Digite uma palavra: "

   @03,21 get cLetra   picture "@!"
   @05,20 get dData
   @07,29 get nInteiro picture "999"
   @09,40 get nDecimal picture "999.99"
   @11,23 get cPalavra picture "@!"
   read

   if lastkey() == 27
      nRespostaSair := Alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   inkey(0)
   clear
   @01,01 to  13,60 double
   @03,03 say "Letra digitada: " + cLetra
   @05,03 say "Data digitada:  " + dToc(dData)
   @07,03 say "Inteiro digitado: " + alltrim(str(nInteiro))
   @09,03 say "Numero com casas decimais: " + alltrim(str(nDecimal))
   @11,03 say "Palavra digitada: " + cPalavra

   inkey(0)
enddo
