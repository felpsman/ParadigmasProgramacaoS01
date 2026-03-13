print("Quantos números você deseja inserir?")
local N = tonumber(io.read())
local minhaTabela = {}
local TabelaImpar = {}
print("Digite os valores que sao inseridos:")
for i = 1, N do
    print("Digite o número " .. i .. ":")
    minhaTabela[i] = tonumber(io.read())
    if minhaTabela[i]%2 ~=0 then
      table.insert(TabelaImpar,minhaTabela[i])
    else
      end
end
print("Os números inseridos são:")
for i, valor in ipairs(TabelaImpar) do
    print("Índice " .. i .. ": " .. valor)
end

