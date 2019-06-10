clear

set date to british
set epoch to 1940

cMateriaUm        := "Matematica"
cMateriaDois      := "Fisica"
cMateriaTres      := "Biologia"
cMateriaQuatro    := "Quimica"

cNomeAluno        := space(50)
cCurso            := space(30)
dDataNascimento   := cTod("")
nAnoLetivo        := 0
nValorMensalidade := 0

@ 00,00 to 25,80 double
@ 02,02 say "Escola Ficticia"
@ 03,02 say "Ensino fundamental, medio e tecnico"
@ 05,02 say "Aluno: "
@ 07,02 say "Data de nascimento: "
@ 09,02 say "Curso: "
@ 09,52 say "Serie: "
@ 11,02 say "Ano Letivo: "
@ 11,15 say "Valor da Mensalidade: "

@ 12,13 to 15,23
@ 13,13 say "|   1B    "
@ 14,13 say "  N  |  F  "
@ 13,23 say "    2B    "
@ 14,23 say "  N  |  F  "
@ 13,33 say "    3B    "
@ 14,33 say "  N  |  F  "
@ 13,43 say "    4B    "
@ 14,43 say "  N  |  F  "

@ 16,02 say cMateriaUm
@ 18,02 say cMateriaDois
@ 20,02 say cMateriaTres
@ 22,02 say cMateriaQuatro

@ 24,02 say ""

