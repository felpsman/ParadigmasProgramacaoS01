print("Digite o primeiro valor:")
local M = tonumber(io.read())
print("Digite o segunda valor:")
local N = tonumber(io.read())
print("Digite o valor a ser calculado:")
local X = tonumber(io.read())
for i = M, N do
  Tabuada=X*i
    print("Tabuada: "..X .."X"..i.."=" ..Tabuada)
end