print("Quantos números você deseja inserir?")
local N = tonumber(io.read())
local minhaTabela = {}
maior=0
print("Digite os valores que sao inseridos:")
for i = 1, N do
    print("Digite o número " .. i .. ":")
    minhaTabela[i] = tonumber(io.read())
    if minhaTabela[i]>maior then
      maior=minhaTabela[i]
    else
      end
end
print("O maior numero da tabela eh: "..maior)

