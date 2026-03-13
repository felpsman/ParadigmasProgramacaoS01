function calculadora(n1, n2, operador)
    if operador == "+" then
        return n1 + n2
    elseif operador == "-" then
        return n1 - n2
    elseif operador == "*" then
        return n1 * n2
    elseif operador == "/" then
        if n2 == 0 then
            return "Erro: divisão por zero"
        end
        return n1/n2
    else
        return "Erro: operador inválido"
    end
end
print("Digite o primeiro valor:")
local n1 = tonumber(io.read())
print("Digite o segundo valor:")
local n2 = tonumber(io.read())
print("Qual o operacao voce ira querer fazer: ")
local operador = io.read()
resultado = calculadora(n1,n2,operador)
print("resultado: "..resultado)