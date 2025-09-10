function calculadora(a, b, operador)
    if operador == "+" then
        return a + b
    elseif operador == "-" then
        return a - b
    elseif operador == "*" then
        return a * b
    elseif operador == "/" then
        if b ~= 0 then
            return a / b
        else
            return "Erro: divisão por zero!"
        end
    else
        return "Erro: operador inválido!"
    end
end

print("Digite o primeiro número: ")
local x = tonumber(io.read())

print("Digite o segundo número: ")
local y = tonumber(io.read())

print("Digite o operador (+, -, * ou /): ")
local op = io.read()

local resultado = calculadora(x, y, op)

print("Resultado:",resultado)
