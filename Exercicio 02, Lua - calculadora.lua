function operar(x, y, sinal)
    if sinal == "+" then
        return x + y
    elseif sinal == "-" then
        return x - y
    elseif sinal == "*" then
        return x * y
    elseif sinal == "/" then
        if y ~= 0 then
            return x / y
        else
            return "Erro: Divisão por zero"
        end
    else
        return "Erro: Operador inválido"
    end
end

print("Digite o primeiro valor: ")
local valor1 = tonumber(io.read())
print("Digite o segundo valor: ")
local valor2 = tonumber(io.read())
print("Digite o operador (+, -, *, /): ")
local simbolo = io.read()

print("Resultado: ", operar(valor1, valor2, simbolo))
