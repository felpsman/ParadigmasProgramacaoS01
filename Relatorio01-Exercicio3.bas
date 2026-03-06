Dim real as single
Dim dolar as single
Dim euro as single
PRINT("Insira a quantia em reais: R$")
INPUT real
dolar = real/5
euro = real/5.40
PRINT USING  "Real R$ $" "##.##";real
PRINT USING  "Dolar $" "##.##";dolar
PRINT USING "Euro" "##.##"; euro
Sleep
