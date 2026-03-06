Dim nota1 as integer
Dim nota2 as integer
Dim nota3 as integer
Dim resultado as integer
PRINT("Insira a primeira nota")
INPUT nota1
PRINT "A primeira nota eh:";nota1
PRINT("Insira a segunda nota")
INPUT nota2
PRINT "A segunda nota eh:";nota2
PRINT("Insira a terceira nota")
INPUT nota3
PRINT "A terceira nota eh:";nota3
resultado=(nota3+nota2+nota1)/3
if resultado >=70 then
  PRINT "Aluno aprovado direto com a media de:";resultado
else
  PRINT "Aluno reprovado com a media de:";resultado
  End if
