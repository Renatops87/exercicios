
do while .t.
   clear

   nCodigoProduto := 0
   cCategoria     := space(30)

   @ 01,01 to 11,45 double
   @ 03,03 say "Digite o codigo do produto: "

   @ 03,31 get nCodigoProduto picture "999" valid nCodigoProduto > 0
   read

   if lastkey() == 27
      nRespostaSair = alert("Deseja Sair?",{"Sim","Nao"})
      if nRespostaSair == 1
         exit
      else
         loop
      endif
   endif

   if nCodigoProduto = 1
      cCategoria := "Alimento nao-perecivel"
   elseif nCodigoProduto <= 4
      cCategoria := "Alimento perecivel"
   elseif nCodigoProduto <= 6
      cCategoria := "Vestuario"
   elseif nCodigoProduto = 7
      cCategoria := "Higiene Pessoal"
   elseif nCodigoProduto <= 15
      cCategoria := "Limpeza e utensilios domesticos"
   else
      cCategoria := "Codigo nao possui categoria"
   endif

   @ 05,03 say "CODIGO"
   @ 05,12 say "CLASSIFICACAO"
   @ 06,03 say replicate("-",40)
   @ 07,03 say alltrim(str(nCodigoProduto))
   @ 07,12 say cCategoria

   @ 09,03 say "Pressione qualquer tecla para continuar"

   inkey(0)

enddo
