function somar(a, b)
    return a + b
end

function subtrair(a, b)
    return a - b
end

function multiplicar(a, b)
    return a * b
end

function dividir(a, b)
    return a / b
end

function calculadora(a, b, operador)

    if operador == "+" then
        return somar(a, b)

    elseif operador == "-" then
        return subtrair(a, b)

    elseif operador == "*" then
        return multiplicar(a, b)

    elseif operador == "/" then
        return dividir(a, b)

    else
        return "Erro: operador invalido"
    end

end


print("Digite o primeiro numero:")
n1 = tonumber(io.read())

print("Digite o segundo numero:")
n2 = tonumber(io.read())

print("Digite o operador (+, -, *, /):")
op = io.read()

resultado = calculadora(n1, n2, op)

print("Resultado:", resultado)