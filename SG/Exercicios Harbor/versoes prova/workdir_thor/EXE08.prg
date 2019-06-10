Set date to British
Set epoch to 1940
clear

nQuantidadeA := 0
nQuantidadeB := 0
nQuantidadeC := 0
nPrecoA      := 0
nPrecoB      := 0
nPrecoC      := 0
cNomeCliente := space(50)
cProdutoA    := space(20)
cProdutoB    := space(20)
cProdutoC    := space(20)
dDataPedido  := Date()
dDataEntrega := cTod("")

@ 01,01 to 22,76 double
@ 07,02 to 09,30
@ 07,30 to 09,50
@ 07,50 to 09,61
@ 07,61 to 09,75
@ 09,02 to 11,30
@ 09,30 to 11,50
@ 09,50 to 11,61
@ 09,61 to 11,75
@ 11,02 to 13,30
@ 11,30 to 13,50
@ 11,50 to 13,61
@ 11,61 to 13,75
@ 15,02 to 13,30
@ 15,30 to 13,50
@ 15,50 to 13,61
@ 15,61 to 13,75
@ 15,50 to 17,75

@ 03,30 say "Mercado SG Sistemas"
@ 05,02 say "Cliente: "
@ 05,62 say "Data:"+dToc(dDataPedido)
@ 08,03 say "Produto "
@ 08,39 say "Quantidade "
@ 08,56 say "Preco"
@ 08,67 say "Subtotal"
@ 16,03 say "Data de Entrega: "
@ 16,51 say "TOTAL GERAL:"

@ 05,11 get cNomeCliente picture "@!"          valid !Empty(cNomeCliente)
read

@ 10,03 get cProdutoA    picture "@!"          valid !Empty(cProdutoA)
@ 10,43 get nQuantidadeA picture "999.99"      valid nQuantidadeA > 0
@ 10,53 get nPrecoA      picture "@E 9,999.99" valid nPrecoA > 0
read

nToTalA := nQuantidadeA * nPrecoA
@ 10,66 say "R$ " + alltrim(transform(nTotalA, "@E 999,999.99"))

@ 12,03 get cProdutoB    picture "@!"          valid !Empty(cProdutoB)
@ 12,43 get nQuantidadeB picture "999.99"      valid nQuantidadeB > 0
@ 12,53 get nPrecoB      picture "@E 9,999.99" valid nPrecoB > 0
read

nTotalB := nQuantidadeB * nPrecoB
@ 12,66 say "R$ " + alltrim(transform(nTotalB, "@E 999,999.99"))

@ 14,03 get cProdutoC    picture "@!"          valid !Empty(cProdutoC)
@ 14,43 get nQuantidadeC picture "999.99"      valid nQuantidadeC > 0
@ 14,53 get nPrecoC      picture "@E 9,999.99" valid nPrecoC > 0
read

nTotalC := nQuantidadeC * nPrecoC
@ 14,66 say "R$ " + alltrim(transform(nTotalC, "@E 999,999.99"))

nTotalGeral := nTotalA + nTotalB + nTotalC
@ 16,66     say "R$ " + alltrim(transform(nTotalGeral,"@E 999,999.99"))

@ 16,20 get dDataEntrega valid dDataEntrega > date()
read

@ 18,03 say "Pedido Gerado"
@ 19,03 say "Data de Emissao: " + dToc(dDataPedido)
@ 20,03 say "Data de Entrega: " + dToc(dDataEntrega)

@ 23,02 say ""
inkey(0)
