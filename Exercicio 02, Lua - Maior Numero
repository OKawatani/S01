function maiorNum(tabela)
  local maior = tabela[1] 
  for i = 2, #tabela do  
      if tabela[i] > maior then
          maior = tabela[i]
      end
  end
  return maior
end

print("Quantos números deseja inserir? ")
local n = tonumber(io.read())

local numeros = {}

for i = 1, n, 1 do
  io.write("Digite o número ", i, ": ")
  numeros[i] = tonumber(io.read())
end

print("O maior número da tabela é:", maiorNum(numeros))
