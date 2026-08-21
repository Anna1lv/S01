function calcularMedia(a, b)
    local media = 0
    media = (a + b)/2
    print ("Resultado: " .. media)
end

function encontrarMaior(a, b)
    if a > b then
        print ("Resultado: " .. a)
    elseif b > a then
        print ("Resultado: " .. b)
    else
        print ("São iguais")
    end   
    
end

function calcularDiferencaAbsoluta(a,b)
    local diferenca = a - b
    if (a - b) < 0 then
        diferenca = diferenca * (-1)
    end
    print ("Resultado: " .. diferenca)
end

function analisarNumeros(n1, n2, operacao)
    if operacao == "media" then
        calcularMedia(n1, n2)
    elseif operacao == "maior" then
        encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        calcularDiferencaAbsoluta(n1,n2)
    else
        print("Operação inválida!")
    end
end

print("Digite o primeiro numero:")
local n1 = tonumber(io.read())

print("Digite o segundo numero:")
local n2 = tonumber(io.read())

print("Digite a operação ('media','maior' ou 'diferenca'):")
local operacao = (io.read())

analisarNumeros(n1, n2, operacao)

