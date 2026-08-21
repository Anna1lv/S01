function filtrarMaiores(tabela, limite)
    local novatabela = {}
    for i = 1, #tabela do
       if tabela[i] > limite then
        table.insert(novatabela, tabela[i])
       end
    end
    return novatabela
end

local elementos = {}

print("Digite a quantidade de elementos(N):")
local N = tonumber(io.read())

for i = 1, N do
    print(" Digite o elemento " .. i .. ":")
    elemento = tonumber(io.read())
    table.insert(elementos, elemento)
 end

print("Digite o valor limite (K):")
local K = tonumber(io.read())

print("Elementos maiores que " .. K)

local maiores = filtrarMaiores(elementos, K)
for i = 1, #maiores do
    print(maiores[i])
end
