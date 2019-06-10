// Projeto por Lucas Farinha Bosio
// Setup
clear
set date to british
set epoch to 1940
set scoreboard off

/******************************************************************************/
// VARIAVEIS

// Variaveis sobre a escola
cEscolaNome := "COLEGIO SANTA MARIA"
cEscolaEndereco := "RUA DAS GARCAS, 376"
cEscolaTelefone := "(44)3024-1616"

// Variaveis sobre materias
cMateriaA := space(12)
cMateriaB := space(12)
cMateriaC := space(12)
cMateriaD := space(12)

// Variaveis sobre notas
nMateriaABimestre1Nota := 0
nMateriaABimestre2Nota := 0
nMateriaABimestre3Nota := 0
nMateriaABimestre4Nota := 0
nMateriaAMediaAnual    := 0

nMateriaBBimestre1Nota := 0
nMateriaBBimestre2Nota := 0
nMateriaBBimestre3Nota := 0
nMateriaBBimestre4Nota := 0
nMateriaBMediaAnual    := 0

nMateriaCBimestre1Nota := 0
nMateriaCBimestre2Nota := 0
nMateriaCBimestre3Nota := 0
nMateriaCBimestre4Nota := 0
nMateriaCMediaAnual    := 0

nMateriaDBimestre1Nota := 0
nMateriaDBimestre2Nota := 0
nMateriaDBimestre3Nota := 0
nMateriaDBimestre4Nota := 0
nMateriaDMediaAnual    := 0

nMateriaABimestre1Faltas := 0
nMateriaABimestre2Faltas := 0
nMateriaABimestre3Faltas := 0
nMateriaABimestre4Faltas := 0
nMateriaAFaltasTotais    := 0

nMateriaBBimestre1Faltas := 0
nMateriaBBimestre2Faltas := 0
nMateriaBBimestre3Faltas := 0
nMateriaBBimestre4Faltas := 0
nMateriaBFaltasTotais    := 0

nMateriaCBimestre1Faltas := 0
nMateriaCBimestre2Faltas := 0
nMateriaCBimestre3Faltas := 0
nMateriaCBimestre4Faltas := 0
nMateriaCFaltasTotais    := 0

nMateriaDBimestre1Faltas := 0
nMateriaDBimestre2Faltas := 0
nMateriaDBimestre3Faltas := 0
nMateriaDBimestre4Faltas := 0
nMateriaDFaltasTotais    := 0

nReprovacoes             := 0

cMateriaAResultado             := ""
cMateriaBResultado             := ""
cMateriaCResultado             := ""
cMateriaDResultado             := ""
cResultadoFinal                := ""

// Dados do aluno
cAlunoNome                     := space(40)
cAlunoCurso                    := space(30)
dAlunoNascimento               := ctod("")
nAlunoSerie                    := 0
nAlunoAnoLetivo                := year(date()) // Ano ao que o boletim se refere (ex: 2015,2016). Usa o ano atual como padrao

nAlunoValorMensalidadeBase     := 0
nAlunoValorMensalidadeAtual    := 0
nAlunoReprovacoesMultplicador  := 1 // 1 indica que nao ha nem aumento nem desconto. 1.1 indica aumento de 10%

cAlunoBolsa                    := space(1) // "I" indica bolsa integral, "P" indica particial e "N" e nao bolsista
nAlunoBolsaMultiplicador       := 1 // 1 indica sem variacao

// Dados sobre bolsas
nBolsaMultiplicadorIntegral    := 0.02
nBolsaMultiplicadorParcial     := 0.5
nBolsaMultiplicadorNenhum      := 1

/******************************************************************************/
// Indices para Layout
// Numeros de linha e coluna para posicionar objetos

nJanelaLargura            := 80
nJanelaAltura             := 25

nLinJanelaLimiteSuperior  := 0
nColJanelaLimiteEsquerdo  := 0
nLinJanelaLimiteInferior  := nJanelaAltura - 1
nColJanelaLimiteDireito   := nJanelaLargura - 1

nColTextoAlinhadoEsquerdo := nColJanelaLimiteEsquerdo + 1
nColTextoAlinhadoDireito  := nColJanelaLimiteDireito - 1

nLinEscolaNome            := nLinJanelaLimiteSuperior + 1
nColEscolaNome            := nColTextoAlinhadoEsquerdo

// Cabecalho inclui endereco e telefone na mesma linha, em colunas separadas
nLinEscolaCabecalho            := nLinEscolaNome + 2
nColEscolaEndereco             := nColEscolaNome
nColEscolaTelefone             := nColEscolaEndereco + 40

nLinAlunoNome                  := nLinEscolaCabecalho + 2
nLinAlunoNascimento            := nLinAlunoNome
nLinAlunoCurso                 := nLinAlunoNome + 1
nLinAlunoSerie                 := nLinAlunoCurso
nLinAlunoAnoLetivo             := nLinAlunoSerie
nLinAlunoMensalidadeBase       := nLinAlunoAnoLetivo + 1
nLinAlunoBolsa                 := nLinAlunoMensalidadeBase
nLinAlunoMensalidadeAtual      := nLinAlunoBolsa

nColAlunoNome                  := nColTextoAlinhadoEsquerdo
nColAlunoNomeInput             := nColAlunoNome + 6 // Espaco para a palavra "NOME"
nColAlunoNascimento            := nColAlunoNomeInput + 42 // Espaco para input do campo anterior
nColAlunoNascimentoInput       := nColAlunoNascimento + 20 // Espaco para a frase "DATA DE NASCIMENTO"
nColAlunoCurso                 := nColTextoAlinhadoEsquerdo // Espaco para input do campo anterior
nColAlunoCursoInput            := nColAlunoCurso + 7 // Espaco para a palavra "CURSO"
nColAlunoSerie                 := nColAlunoCursoInput + 35 // Espaco para input do campo anterior
nColAlunoSerieInput            := nColAlunoSerie + 7 // Espaco para a palavra "SERIE"
nColAlunoAnoLetivo             := nColAlunoSerieInput + 5 // Espaco para input do campo anterior
nColAlunoAnoLetivoInput        := nColAlunoAnoLetivo + 12 // Espaco para a frase "ANO LETIVO"
nColAlunoMensalidadeBase       := nColTextoAlinhadoEsquerdo // Espaco para input do campo anterior
nColAlunoMensalidadeBaseInput  := nColAlunoMensalidadeBase + 21 // Espaco para a frase "MENSALIDADE BASE"
nColAlunoBolsa                 := nColAlunoMensalidadeBaseInput + 8 // Espaco para input do campo anterior
nColAlunoBolsaInput            := nColAlunoBolsa + 15 // Espaco para a frase "BOLSA (I/P/N)"
nColAlunoMensalidadeAtual      := nColAlunoBolsaInput + 4 // Espaco para input do campo anterior
nColAlunoMensalidadeAtualValor := nColAlunoMensalidadeAtual + 19 // Espaco para a frase "MENSALIDADE ATUAL"


nLinBimestres                  := nLinAlunoMensalidadeBase + 2
nLinNotas                      := nLinBimestres + 1
nLinFaltas                     := nLinNotas

nColBimestre1                  := nColTextoAlinhadoEsquerdo + 13
nColBimestre2                  := nColBimestre1 + 13
nColBimestre3                  := nColBimestre2 + 13
nColBimestre4                  := nColBimestre3 + 13
nColAnual                      := nColBimestre4 + 13

nColBimestre1Notas             := nColBimestre1
nColBimestre1Faltas            := nColBimestre1Notas + 6
nColBimestre2Notas             := nColBimestre2
nColBimestre2Faltas            := nColBimestre2Notas + 6
nColBimestre3Notas             := nColBimestre3
nColBimestre3Faltas            := nColBimestre3Notas + 6
nColBimestre4Notas             := nColBimestre4
nColBimestre4Faltas            := nColBimestre4Notas + 6
nColAnualNotas                 := nColAnual
nColAnualFaltas                := nColAnualNotas + 6

nLinMateriaTexto               := nLinAlunoMensalidadeBase + 3
nLinMateriaA                   := nLinMateriaTexto + 2
nLinMateriaB                   := nLinMateriaA + 2
nLinMateriaC                   := nLinMateriaB + 2
nLinMateriaD                   := nLinMateriaC + 2

nColMateria                    := nColTextoAlinhadoEsquerdo

/******************************************************************************/
// BOLETIM
/******************************************************************************/
// Desenho do layout

// Janela principal com bordas
@ nLinJanelaLimiteSuperior,nColJanelaLimiteEsquerdo to nLinJanelaLimiteInferior,nColJanelaLimiteDireito double

// Secao com dados da escola
@ nLinEscolaNome,nColEscolaNome say space(30) + cEscolaNome // Space() para adicionar espacos e centralizar a palavra. Solucao melhor e usar padC()
@ nLinEscolaCabecalho,nColEscolaEndereco say "ENDERECO: " + cEscolaEndereco
@ nLinEscolaCabecalho,nColEscolaTelefone say "TELEFONE: " + cEscolaTelefone

// Linha divisoria apos o cabecalho da escola
@ (nLinEscolaCabecalho+1),nColTextoAlinhadoEsquerdo to (nLinEscolaCabecalho+1),nColTextoAlinhadoDireito


// Secao com dados do aluno
@ nLinAlunoNome,nColAlunoNome say "NOME: "
@ nLinAlunoCurso,nColAlunoCurso say "CURSO: "
@ nLinAlunoSerie,nColAlunoSerie say "SERIE: "
@ nLinAlunoAnoLetivo,nColAlunoAnoLetivo say "ANO LETIVO: "
@ nLinAlunoNascimento,nColAlunoNascimento say "DATA DE NASCIMENTO: "
@ nLinAlunoMensalidadeBase,nColAlunoMensalidadeBase say "MENSALIDADE BASE: R$"
@ nLinAlunoBolsa,nColAlunoBolsa say "BOLSA (I/P/N): "
@ nLinAlunoMensalidadeAtual,nColAlunoMensalidadeAtual say "MENSALIDADE ATUAL: R$"

// Divisoria entre dados do aluno e notas e faltas
@ (nLinAlunoMensalidadeBase+1),nColTextoAlinhadoEsquerdo to (nLinAlunoMensalidadeBase+1),nColTextoAlinhadoDireito

// Secao com materias e bimestres

@ nLinMateriaTexto,nColMateria say "MATERIAS"
@ (nLinMateriaTexto+1),nColTextoAlinhadoEsquerdo to (nLinMateriaTexto+1),nColTextoAlinhadoDireito // Divisoria horizontal antes dos nome das materias e notas

@ nLinBimestres,nColBimestre1 say "1§ BIMESTRE"
@ nLinBimestres,nColBimestre2 say "2§ BIMESTRE"
@ nLinBimestres,nColBimestre3 say "3§ BIMESTRE"
@ nLinBimestres,nColBimestre4 say "4§ BIMESTRE"
@ nLinBimestres,nColAnual say "ANUAL"

// Separador vertical entre cada semestre
@ nLinBimestres,(nColBimestre1-1) to (nLinJanelaLimiteInferior-1),(nColBimestre1-1)
@ nLinBimestres,(nColBimestre2-1) to (nLinJanelaLimiteInferior-1),(nColBimestre2-1)
@ nLinBimestres,(nColBimestre3-1) to (nLinJanelaLimiteInferior-1),(nColBimestre3-1)
@ nLinBimestres,(nColBimestre4-1) to (nLinJanelaLimiteInferior-1),(nColBimestre4-1)
@ nLinBimestres,(nColAnual-1) to (nLinJanelaLimiteInferior-1),(nColAnual-1)


@ nLinNotas,nColBimestre1Notas say "NOTAS"
@ nLinNotas,nColBimestre2Notas say "NOTAS"
@ nLinNotas,nColBimestre3Notas say "NOTAS"
@ nLinNotas,nColBimestre4Notas say "NOTAS"
@ nLinNotas,nColAnualNotas say "NOTAS"

@ nLinFaltas,nColBimestre1Faltas say "FALTAS"
@ nLinFaltas,nColBimestre2Faltas say "FALTAS"
@ nLinFaltas,nColBimestre3Faltas say "FALTAS"
@ nLinFaltas,nColBimestre4Faltas say "FALTAS"
@ nLinFaltas,nColAnualFaltas say "FALTAS"

// Input dos dados do aluno

@ nLinAlunoNome,nColAlunoNomeInput get cAlunoNome                PICTURE "@!"   VALID !empty(cAlunoNome)
@ nLinAlunoNascimento,nColAlunoNascimentoInput get dAlunoNascimento             VALID !empty(dAlunoNascimento)
@ nLinAlunoCurso,nColAlunoCursoInput get cAlunoCurso             PICTURE "@!"   VALID !empty(cAlunoCurso)
@ nLinAlunoSerie,nColAlunoSerieInput get nAlunoSerie             PICTURE "9"    VALID (nAlunoSerie>0 .and. nAlunoSerie<10)
@ nLinAlunoAnoLetivo,nColAlunoAnoLetivoInput get nAlunoAnoLetivo PICTURE "9999" VALID nAlunoAnoLetivo>1940 // 1940 escolhido por causa da epoch
@ nLinAlunoMensalidadeBase,nColAlunoMensalidadeBaseInput get nAlunoValorMensalidadeBase PICTURE "@E 999.99" VALID nAlunoValorMensalidadeBase > 0
@ nLinAlunoBolsa,nColAlunoBolsaInput get cAlunoBolsa             PICTURE "@!"   VALID cAlunoBolsa $ "IPN"
read

// Calculo do valor da mensalidade atual
if cAlunoBolsa == "I"
   nAlunoBolsaMultiplicador := nBolsaMultiplicadorIntegral
elseif cAlunoBolsa == "P"
   nAlunoBolsaMultiplicador := nBolsaMultiplicadorParcial
elseif cAlunoBolsa == "N"
   nAlunoBolsaMultiplicador := nBolsaMultiplicadorNenhum
else
   // Caso impossivel
endif

nAlunoValorMensalidadeAtual := nAlunoValorMensalidadeBase*nAlunoBolsaMultiplicador

// Mostra o valor da mensalidade atual
@ nLinAlunoMensalidadeAtual,nColAlunoMensalidadeAtualValor say transform(nAlunoValorMensalidadeAtual,"@E 999.99")

// Input das notas e faltas
// Agrupo por materia ou por bimestre? Depende de como a pessoa que insere os valores recebe os dados.
// Escolhido agrupar por materia

// Como fazer mais facil? FOR e ARRAYS

// Materia A
@ nLinMateriaA,nColMateria get cMateriaA                        PICTURE "@!" VALID !empty(cMateriaA)

@ nLinMateriaA,nColBimestre1Notas get nMateriaABimestre1Nota    PICTURE "99" VALID (nMateriaABimestre1Nota>=0 .and. nMateriaABimestre1Nota<=10)
@ nLinMateriaA,nColBimestre1Faltas get nMateriaABimestre1Faltas PICTURE "99" VALID nMateriaABimestre1Faltas >= 0

@ nLinMateriaA,nColBimestre2Notas get nMateriaABimestre2Nota    PICTURE "99" VALID (nMateriaABimestre2Nota>=0 .and. nMateriaABimestre2nota<=10)
@ nLinMateriaA,nColBimestre2Faltas get nMateriaABimestre2Faltas PICTURE "99" VALID nMateriaABimestre2Faltas >= 0

@ nLinMateriaA,nColBimestre3Notas get nMateriaABimestre3Nota    PICTURE "99" VALID (nMateriaABimestre3Nota>=0 .and. nMateriaABimestre3Nota<=10)
@ nLinMateriaA,nColBimestre3Faltas get nMateriaABimestre3Faltas PICTURE "99" VALID nMateriaABimestre3Faltas >= 0

@ nLinMateriaA,nColBimestre4Notas get nMateriaABimestre4Nota    PICTURE "99" VALID (nMateriaABimestre4Nota>=0 .and. nMateriaABimestre4Nota<=10)
@ nLinMateriaA,nColBimestre4Faltas get nMateriaABimestre4Faltas PICTURE "99" VALID nMateriaABimestre4Faltas >= 0

// Materia B
@ nLinMateriaB,nColMateria get cMateriaB                        PICTURE "@!" VALID !empty(cMateriaB)

@ nLinmateriaB,nColBimestre1Notas get nmateriaBBimestre1Nota    PICTURE "99" VALID (nmateriaBBimestre1Nota>=0 .and. nmateriaBBimestre1Nota<=10)
@ nLinmateriaB,nColBimestre1Faltas get nmateriaBBimestre1Faltas PICTURE "99" VALID nmateriaBBimestre1Faltas >= 0

@ nLinmateriaB,nColBimestre2Notas get nmateriaBBimestre2Nota    PICTURE "99" VALID (nmateriaBBimestre2Nota>=0 .and. nmateriaBBimestre2nota<=10)
@ nLinmateriaB,nColBimestre2Faltas get nmateriaBBimestre2Faltas PICTURE "99" VALID nmateriaBBimestre2Faltas >= 0

@ nLinmateriaB,nColBimestre3Notas get nmateriaBBimestre3Nota    PICTURE "99" VALID (nmateriaBBimestre3Nota>=0 .and. nmateriaBBimestre3Nota<=10)
@ nLinmateriaB,nColBimestre3Faltas get nmateriaBBimestre3Faltas PICTURE "99" VALID nmateriaBBimestre3Faltas >= 0

@ nLinmateriaB,nColBimestre4Notas get nmateriaBBimestre4Nota    PICTURE "99" VALID (nmateriaBBimestre4Nota>=0 .and. nmateriaBBimestre4Nota<=10)
@ nLinmateriaB,nColBimestre4Faltas get nmateriaBBimestre4Faltas PICTURE "99" VALID nmateriaBBimestre4Faltas >= 0

// Materia C
@ nLinMateriaC,nColMateria get cMateriaC                        PICTURE "@!" VALID !empty(cMateriaC)

@ nLinmateriaC,nColBimestre1Notas get nmateriaCBimestre1Nota    PICTURE "99" VALID (nmateriaCBimestre1Nota>=0 .and. nmateriaCBimestre1Nota<=10)
@ nLinmateriaC,nColBimestre1Faltas get nmateriaCBimestre1Faltas PICTURE "99" VALID nmateriaCBimestre1Faltas >= 0

@ nLinmateriaC,nColBimestre2Notas get nmateriaCBimestre2Nota    PICTURE "99" VALID (nmateriaCBimestre2Nota>=0 .and. nmateriaCBimestre2nota<=10)
@ nLinmateriaC,nColBimestre2Faltas get nmateriaCBimestre2Faltas PICTURE "99" VALID nmateriaCBimestre2Faltas >= 0

@ nLinmateriaC,nColBimestre3Notas get nmateriaCBimestre3Nota    PICTURE "99" VALID (nmateriaCBimestre3Nota>=0 .and. nmateriaCBimestre3Nota<=10)
@ nLinmateriaC,nColBimestre3Faltas get nmateriaCBimestre3Faltas PICTURE "99" VALID nmateriaCBimestre3Faltas >= 0

@ nLinmateriaC,nColBimestre4Notas get nmateriaCBimestre4Nota    PICTURE "99" VALID (nmateriaCBimestre4Nota>=0 .and. nmateriaCBimestre4Nota<=10)
@ nLinmateriaC,nColBimestre4Faltas get nmateriaCBimestre4Faltas PICTURE "99" VALID nmateriaCBimestre4Faltas >= 0

// Materia D
@ nLinMateriaD,nColMateria get cMateriaD                        PICTURE "@!" VALID !empty(cMateriaD)

@ nLinmateriaD,nColBimestre1Notas get nmateriaDBimestre1Nota    PICTURE "99" VALID (nmateriaDBimestre1Nota>=0 .and. nmateriaDBimestre1Nota<=10)
@ nLinmateriaD,nColBimestre1Faltas get nmateriaDBimestre1Faltas PICTURE "99" VALID nmateriaDBimestre1Faltas >= 0

@ nLinmateriaD,nColBimestre2Notas get nmateriaDBimestre2Nota    PICTURE "99" VALID (nmateriaDBimestre2Nota>=0 .and. nmateriaDBimestre2nota<=10)
@ nLinmateriaD,nColBimestre2Faltas get nmateriaDBimestre2Faltas PICTURE "99" VALID nmateriaDBimestre2Faltas >= 0

@ nLinmateriaD,nColBimestre3Notas get nmateriaDBimestre3Nota    PICTURE "99" VALID (nmateriaDBimestre3Nota>=0 .and. nmateriaDBimestre3Nota<=10)
@ nLinmateriaD,nColBimestre3Faltas get nmateriaDBimestre3Faltas PICTURE "99" VALID nmateriaDBimestre3Faltas >= 0

@ nLinmateriaD,nColBimestre4Notas get nmateriaDBimestre4Nota    PICTURE "99" VALID (nmateriaDBimestre4Nota>=0 .and. nmateriaDBimestre4Nota<=10)
@ nLinmateriaD,nColBimestre4Faltas get nmateriaDBimestre4Faltas PICTURE "99" VALID nmateriaDBimestre4Faltas >= 0

read

// C lculo das medias anuais e faltas totais por materia

nMateriaAMediaAnual := (nMateriaABimestre1Nota + nMateriaABimestre2Nota + nMateriaABimestre3Nota + nMateriaABimestre4Nota)/4
nMateriaBMediaAnual := (nMateriaBBimestre1Nota + nMateriaBBimestre2Nota + nMateriaBBimestre3Nota + nMateriaBBimestre4Nota)/4
nMateriaCMediaAnual := (nMateriaCBimestre1Nota + nMateriaCBimestre2Nota + nMateriaCBimestre3Nota + nMateriaCBimestre4Nota)/4
nMateriaDMediaAnual := (nMateriaDBimestre1Nota + nMateriaDBimestre2Nota + nMateriaDBimestre3Nota + nMateriaDBimestre4Nota)/4

nMateriaAFaltasTotais :=  nMateriaABimestre1Faltas +  nMateriaABimestre2Faltas +  nMateriaABimestre3Faltas +  nMateriaABimestre4Faltas
nMateriaBFaltasTotais :=  nMateriaBBimestre1Faltas +  nMateriaBBimestre2Faltas +  nMateriaBBimestre3Faltas +  nMateriaBBimestre4Faltas
nMateriaCFaltasTotais :=  nMateriaCBimestre1Faltas +  nMateriaCBimestre2Faltas +  nMateriaCBimestre3Faltas +  nMateriaCBimestre4Faltas
nMateriaDFaltasTotais :=  nMateriaDBimestre1Faltas +  nMateriaDBimestre2Faltas +  nMateriaDBimestre3Faltas +  nMateriaDBimestre4Faltas


// Mostra das medias anuais e faltas totais

   // Materia A
   // Seleciona cor de acordo com o resultado
if nMateriaAMediaAnual > 6
   set color to W+/G
else
   set color to W+/R
endif

   // Mostra o resultado, usando a cor definida anteriormente
@ nLinMateriaA,nColAnualNotas say alltrim(str(nMateriaAMediaAnual))

   // Materia B
if nMateriaBMediaAnual > 6
   set color to W+/G
else
   set color to W+/R
endif

@ nLinMateriaB,nColAnualNotas say alltrim(str(nMateriaBMediaAnual))

   // Materia C
if nMateriaCMediaAnual > 6
   set color to W+/G
else
   set color to W+/R
endif

@ nLinMateriaC,nColAnualNotas say alltrim(str(nMateriaCMediaAnual))

   // Materia D
if nMateriaDMediaAnual > 6
   set color to W+/G
else
   set color to W+/R
endif

@ nLinMateriaD,nColAnualNotas say alltrim(str(nMateriaDMediaAnual))

set color to

@ nLinMateriaA,nColAnualFaltas say alltrim(str(nMateriaAFaltasTotais))
@ nLinMateriaB,nColAnualFaltas say alltrim(str(nMateriaBFaltasTotais))
@ nLinMateriaC,nColAnualFaltas say alltrim(str(nMateriaCFaltasTotais))
@ nLinMateriaD,nColAnualFaltas say alltrim(str(nMateriaDFaltasTotais))

inkey(0)

/******************************************************************************/
// RELATORIO FINAL
/******************************************************************************/

// Determinacao de aprovacoes e reprovacoes
if nMateriaAMediaAnual < 6 .or. nMateriaAFaltasTotais > 48
   nReprovacoes += 1
   cMateriaAResultado := "REPROVADO"
else
   cMateriaAResultado := "APROVADO"
endif

if nMateriaBMediaAnual < 6 .or. nMateriaBFaltasTotais > 48
   nReprovacoes += 1
   cMateriaBResultado := "REPROVADO"
else
   cMateriaBResultado := "APROVADO"
endif

if nMateriaCMediaAnual < 6 .or. nMateriaCFaltasTotais > 48
   nReprovacoes += 1
   cMateriaCResultado := "REPROVADO"
else
   cMateriaCResultado := "APROVADO"
endif

if nMateriaDMediaAnual < 6 .or. nMateriaDFaltasTotais > 48
   nReprovacoes += 1
   cMateriaDResultado := "REPROVADO"
else
   cMateriaDResultado := "APROVADO"
endif


// Novos indices para novo layout
// Janela continua a mesma
// Cabecalho do a escola e dados do aluno permanecem

nLinConselhoClasse    := nLinMateriaTexto - 1
nLinProfessores       := nLinConselhoClasse + 1
nLinResultadoTexto    := nLinMateriaD + 2
nLinDependencias      := nLinResultadoTexto + 1
nLinNovaMensalidade   := nLinDependencias+ 1

nColConselhoClasse    := nColBimestre1
nColProfVoto1         := nColBimestre1
nColProfVoto2         := nColBimestre2
nColProfVoto3         := nColBimestre3
nColMateriaResultado  := nColBimestre4+2

// Variaveis para voto
cMateriaAProfVoto1    := space(1)
cMateriaAProfVoto2    := space(1)
cMateriaAProfVoto3    := space(1)
cMateriaBProfVoto1    := space(1)
cMateriaBProfVoto2    := space(1)
cMateriaBProfVoto3    := space(1)
cMateriaCProfVoto1    := space(1)
cMateriaCProfVoto2    := space(1)
cMateriaCProfVoto3    := space(1)
cMateriaDProfVoto1    := space(1)
cMateriaDProfVoto2    := space(1)
cMateriaDProfVoto3    := space(1)

nMateriaAVotosAprovar := 0
nMateriaBVotosAprovar := 0
nMateriaCVotosAprovar := 0
nMateriaDVotosAprovar := 0

cAlunoDependencias    := "| "

// Layout para pergunta sobre aprovacoes por faltas

@ (nLinAlunoMensalidadeBase+2),nColTextoAlinhadoEsquerdo clear to (nLinJanelaLimiteInferior-1),nColTextoAlinhadoDireito

@ nLinConselhoClasse,nColConselhoClasse say space(8)+"CONSELHO DE CLASSE" // Uso de espacos para centralizar. O modo melhor e usar padC()
@ nLinProfessores,nColProfVoto1 say space(3)+"VOTO 1"
@ nLinProfessores,nColProfVoto2 say space(3)+"VOTO 2"
@ nLinProfessores,nColProfVoto3 say space(3)+"VOTO 3"
@ nLinProfessores,nColMateriaResultado say "RESULTADO"

@ nLinMateriaTexto,nColMateria say "MATERIA"
@ nLinMateriaA,nColMateria say cMateriaA
@ nLinMateriaB,nColMateria say cMateriaC
@ nLinMateriaC,nColMateria say cMateriaB
@ nLinMateriaD,nColMateria say cMateriaD

// Separadores
@ nLinMateriaTexto,(nColBimestre1-1) to (nLinResultadoTexto-1),(nColBimestre1-1)
@ nLinMateriaTexto,(nColBimestre2-1) to (nLinResultadoTexto-1),(nColBimestre2-1)
@ nLinMateriaTexto,(nColBimestre3-1) to (nLinResultadoTexto-1),(nColBimestre3-1)
@ nLinMateriaTexto,(nColBimestre4-1) to (nLinResultadoTexto-1),(nColBimestre4-1)



// Teste para ver se o aluno reprovou na materia apenas por falta
// Independente do resultado, mostra o resultado final da materia

if cMateriaAResultado == "REPROVADO" .and. nMateriaAMediaAnual > 6 .and. nMateriaAFaltasTotais >= 49 .and. nMateriaAFaltasTotais < 56
// Teste de cMateriaAResultado nao era necessario, mas foi adicionado como garantia de que o teste ocorra apenas para reprovados, mesmo
// que a media necessaria para aprovacao ou que o limite de faltas mude
   @ nLinMateriaA,nColProfVoto1 get cMateriaAProfVoto1 PICTURE "@!" VALID cMateriaAProfVoto1 $ "SN"
   @ nLinMateriaA,nColProfVoto2 get cMateriaAProfVoto2 PICTURE "@!" VALID cMateriaAProfVoto2 $ "SN"
   @ nLinMateriaA,nColProfVoto3 get cMateriaAProfVoto3 PICTURE "@!" VALID cMateriaAProfVoto3 $ "SN"
   read

   if cMateriaAProfVoto1 == "S"
      nMateriaAVotosAprovar += 1
   endif
   if cMateriaAProfVoto2 == "S"
      nMateriaAVotosAprovar += 1
   endif
   if cMateriaAProfVoto3 == "S"
      nMateriaAVotosAprovar += 1
   endif

   if nMateriaAVotosAprovar >= 2 .and. nMateriaAVotosAprovar <= 3 // Teste adicional para evitar um numero maior de votos do que de professores
      cMateriaAResultado := "APROVADO"
      nReprovacoes -= 1
   endif
endif

@ nLinMateriaA,nColMateriaResultado say cMateriaAResultado

if cmateriaBResultado == "REPROVADO" .and. nmateriaBMediaAnual > 6 .and. nmateriaBFaltasTotais >= 49 .and. nmateriaBFaltasTotais < 56
// Teste de cMateriaAResultado nao era necessario, mas foi adicionado como garantia de que o teste ocorra apenas para reprovados, mesmo
// que a media necessaria para aprovacao ou que o limite de faltas mude
   @ nLinmateriaB,nColProfVoto1 get cmateriaBProfVoto1 PICTURE "@!" VALID cmateriaBProfVoto1 $ "SN"
   @ nLinmateriaB,nColProfVoto2 get cmateriaBProfVoto2 PICTURE "@!" VALID cmateriaBProfVoto2 $ "SN"
   @ nLinmateriaB,nColProfVoto3 get cmateriaBProfVoto3 PICTURE "@!" VALID cmateriaBProfVoto3 $ "SN"
   read

   if cmateriaBProfVoto1 == "S"
      nmateriaBVotosAprovar += 1
   endif
   if cmateriaBProfVoto2 == "S"
      nmateriaBVotosAprovar += 1
   endif
   if cmateriaBProfVoto3 == "S"
      nmateriaBVotosAprovar += 1
   endif

   if nmateriaBVotosAprovar >= 2 .and. nmateriaBVotosAprovar <= 3 // Teste adicional para evitar um numero maior de votos do que de professores
      cmateriaBResultado := "APROVADO"
      nReprovacoes -= 1
   endif
endif

@ nLinmateriaB,nColMateriaResultado say cmateriaBResultado


if cmateriaCResultado == "REPROVADO" .and. nmateriaCMediaAnual > 6 .and. nmateriaCFaltasTotais >= 49 .and. nmateriaCFaltasTotais < 56
// Teste de cMateriaAResultado nao era necessario, mas foi adicionado como garantia de que o teste ocorra apenas para reprovados, mesmo
// que a media necessaria para aprovacao ou que o limite de faltas mude
   @ nLinmateriaC,nColProfVoto1 get cmateriaCProfVoto1 PICTURE "@!" VALID cmateriaCProfVoto1 $ "SN"
   @ nLinmateriaC,nColProfVoto2 get cmateriaCProfVoto2 PICTURE "@!" VALID cmateriaCProfVoto2 $ "SN"
   @ nLinmateriaC,nColProfVoto3 get cmateriaCProfVoto3 PICTURE "@!" VALID cmateriaCProfVoto3 $ "SN"
   read

   if cmateriaCProfVoto1 == "S"
      nmateriaCVotosAprovar += 1
   endif
   if cmateriaCProfVoto2 == "S"
      nmateriaCVotosAprovar += 1
   endif
   if cmateriaCProfVoto3 == "S"
      nmateriaCVotosAprovar += 1
   endif

   if nmateriaCVotosAprovar >= 2 .and. nmateriaCVotosAprovar <= 3 // Teste adicional para evitar um numero maior de votos do que de professores
      cmateriaCResultado := "APROVADO"
      nReprovacoes -= 1
   endif
endif

@ nLinmateriaC,nColMateriaResultado say cmateriaCResultado


if cmateriaDResultado == "REPROVADO" .and. nmateriaDMediaAnual > 6 .and. nmateriaDFaltasTotais >= 49 .and. nmateriaDFaltasTotais < 56
// Teste de cMateriaAResultado nao era necessario, mas foi adicionado como garantia de que o teste ocorra apenas para reprovados, mesmo
// que a media necessaria para aprovacao ou que o limite de faltas mude
   @ nLinmateriaD,nColProfVoto1 get cmateriaDProfVoto1 PICTURE "@!" VALID cmateriaDProfVoto1 $ "SN"
   @ nLinmateriaD,nColProfVoto2 get cmateriaDProfVoto2 PICTURE "@!" VALID cmateriaDProfVoto2 $ "SN"
   @ nLinmateriaD,nColProfVoto3 get cmateriaDProfVoto3 PICTURE "@!" VALID cmateriaDProfVoto3 $ "SN"
   read

   if cmateriaDProfVoto1 == "S"
      nmateriaDVotosAprovar += 1
   endif
   if cmateriaDProfVoto2 == "S"
      nmateriaDVotosAprovar += 1
   endif
   if cmateriaDProfVoto3 == "S"
      nmateriaDVotosAprovar += 1
   endif

   if nmateriaDVotosAprovar >= 2 .and. nmateriaDVotosAprovar <= 3 // Teste adicional para evitar um numero maior de votos do que de professores
      cmateriaDResultado := "APROVADO"
      nReprovacoes -= 1
   endif
endif

@ nLinmateriaD,nColMateriaResultado say cmateriaDResultado
// Fim dos resultados de materias


// Resultado final

// Calculo do resultado final
if empty(nReprovacoes) // Nao seria melhor usar "== 0" para indicar que o valor nao e vazio, mas e zero?
   cResultadoFinal                  := "APROVADO"
elseif nReprovacoes > 2
   cResultadoFinal                  := "REPROVADO"
elseif nReprovacoes == 2 .and. nReprovacoes > 0 //Testa para um numero negativo de reprovacoes
   if cAlunoBolsa != "N" // Aluno com qualquer bolsa reprova
      cResultadoFinal               := "REPROVADO"
   else
      cResultadoFinal               := "APROVADO COM DEPENDENCIAS"
      nAlunoReprovacoesMultplicador := nAlunoReprovacoesMultplicador*(1+0.1*nReprovacoes) // 0.1 indica um aumento de 10%
   endif
elseif nReprovacoes == 1
   if cAlunoBolsa == "I"
      cResultadoFinal               := "REPROVADO"
   elseif cAlunoBolsa $ "PN"
      cResultadoFinal               := "APROVADO COM DEPENDENCIAS"
      nAlunoReprovacoesMultplicador := nAlunoReprovacoesMultplicador*(1+0.1*nReprovacoes) // 0.1 indica um aumento de 10%
   else
      // Caso impossivel com opcao de bolsa nao prevista
   endif
else
   // Caso impossivel de valor de reprovacoes negativo
endif

// Calculo da nova mensalidade
nAlunoValorNovaMensalidade := nAlunoValorMensalidadeAtual*nAlunoReprovacoesMultplicador

// Lista de dependencias, caso seja apropriado
if cResultadoFinal == "APROVADO COM DEPENDENCIAS"
   if cMateriaAResultado == "REPROVADO"
      cAlunoDependencias := cAlunoDependencias + alltrim(cMateriaA) + " | "
   endif
   if cMateriaBResultado == "REPROVADO"
      cAlunoDependencias := cAlunoDependencias + alltrim(cMateriaB) + " | "
   endif
   if cMateriaCResultado == "REPROVADO"
      cAlunoDependencias := cAlunoDependencias + alltrim(cMateriaC) + " | "
   endif
   if cMateriaDResultado == "REPROVADO"
      cAlunoDependencias := cAlunoDependencias + alltrim(cMateriaD) + " | "
   endif
endif

// Mostra do resultado
@ nLinResultadoTexto,nColTextoAlinhadoEsquerdo say "RESULTADO: O ALUNO "+ alltrim(cAlunoNome) + " FOI " + cResultadoFinal

if cResultadoFinal == "APROVADO COM DEPENDENCIAS"
   @ nLinDependencias,nColTextoAlinhadoEsquerdo say "DEPENDENCIAS: " + cAlunoDependencias
endif

@ nLinNovaMensalidade,nColTextoAlinhadoEsquerdo say "NOVO VALOR DE MENSALIDADE: R$"+ transform(nAlunoValorNovaMensalidade,"@E 999.99" )

/*
// Parte utilizada apenas no primeiro dia de prova. Resultado final agora esta em outra parte
@ nLinMateriaA,nColMateria say cMateriaA + ":     " + cMateriaAResultado
@ nLinMateriaB,nColMateria say cMateriaB + ":     " + cMateriaBResultado
@ nLinMateriaC,nColMateria say cMateriaC + ":     " + cMateriaCResultado
@ nLinMateriaD,nColMateria say cMateriaD + ":     " + cMateriaDResultado
  */

/******************************************************************************/
// Cleanup
inkey(0)
set color to
clear
