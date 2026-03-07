print("Qual numero voce deseja a tabuada?")
x = tonumber(io.read())

print("Qual o inicio do intervalo?")
m = tonumber(io.read())

print("Qual o final do intervalo?")
n = tonumber(io.read())

if m <= n then
    for i = m, n do
        multiplicacao = x * i
        print(x .. " * " .. i .. " = " .. multiplicacao)
    end
end