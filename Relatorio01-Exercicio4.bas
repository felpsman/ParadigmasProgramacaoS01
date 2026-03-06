Dim distancia as single
Dim consumo as single
Dim combustivel as single
PRINT("Insira a distancia em km:")
INPUT distancia
PRINT("Insira o combustivel gasto em Litros:")
INPUT combustivel
consumo=distancia/combustivel
PRINT USING  "Consumo medio de:" "##.##" "Km/L";consumo 
Sleep
