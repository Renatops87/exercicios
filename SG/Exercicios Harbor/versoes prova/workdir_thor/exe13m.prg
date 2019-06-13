Set color to "b/w"

Clear
Set scoreboard off

nCodigo        := 0
cClassificacao := "Codigo invalido"


@ 00,00 to 10,54
@ 01,01 say PadC("SG Tabela de codigos e produtos",53,"*") Color("w/b")
@ 02,01 say PadC(Time(),53)
@ 03,01 say Replicate ("_",53)
@ 04,01 say PadC("CODIGO",15) + PadC("CLASSIFICACAO",38)             //1§ modo
//@ 04,01 say "    CODIGO    |           CLASSIFICACAO             " //2§ modo
@ 05,01 say "              |                                     "
@ 06,01 say "              |                                     "


@ 06,01 get nCodigo Picture "99" Color("w/b") //Valid nCodigo >= 0 .and. nCodigo <16
read


if nCodigo = 1
   cClassificacao := "Alimento nao perecivel"
elseif nCodigo >= 2 .and. nCodigo <= 4
   cClassificacao := "Alimento perecivel"
elseif nCodigo >= 5 .and. nCodigo <= 6
   cClassificacao := "Vestuario"
elseif nCodigo  = 7
   cClassificacao := "Higiene pessoal"
elseif nCodigo >= 8 .and. nCOdigo <= 15
   cClassificacao := "Limpeza e utensilios domesticos"
else
   Alert("Codigo invalido")
endif


@ 06,16 say PadC(cClassificacao,38) Color("w/b")
@ 10,00 say ""







