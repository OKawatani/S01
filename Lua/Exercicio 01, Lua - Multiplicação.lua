print("Digite o primeiro intervalo: ")
local m = io.read("*n")
print("Digite o segundo intervalo: ")
local n = io.read("*n")
print("Digite o numero que deseja saber os multiplos")
local x = io.read("*n")

for i = m, n, 1 do 
  local resultado = x * i
  print(resultado)
end
