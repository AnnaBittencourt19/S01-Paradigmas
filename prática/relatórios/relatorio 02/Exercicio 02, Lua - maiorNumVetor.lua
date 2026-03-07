print("Quantos numeros voce deseja digitar?")
N = tonumber(io.read())

numeros = {}

for i = 1, N do
    print("Digite um numero:")
    numeros[i] = tonumber(io.read())
end

maior = numeros[1]

for i = 2, N do
    if numeros[i] > maior then
        maior = numeros[i]
    end
end

print("O maior numero e:", maior)