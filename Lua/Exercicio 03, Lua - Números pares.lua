function NumPares(tabela)
    local pares = {}
    for i = 1, #tabela do
        if tabela[i] % 2 == 0 then
            table.insert(pares, tabela[i]) 
        end
    end
    return pares
end

print("Quantos números deseja inserir?")
local n = tonumber(io.read())

local numeros = {}

for i = 1, n, 1 do
    print("Digite o número", i)
    numeros[i] = tonumber(io.read())
end

local pares = NumPares(numeros)

print("Números pares encontrados:")
for i = 1, #pares do
    print(pares[i], " ")
end
