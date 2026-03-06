Dim senha as integer
Dim senha1 as integer
senha=1234
PRINT("Entra com uma senha:")
INPUT senha1
while senha1 <> senha
  PRINT "Senha errada, tente novamente"
  PRINT("Entra com uma senha:")
  INPUT senha1
wend
PRINT("Acesso Liberado")
Sleep