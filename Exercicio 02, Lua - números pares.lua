function filtrar_pares(lista)
    local resultado = {}
    for indice = 1, #lista do
        if lista[indice] % 2 == 0 then
            table.insert(resultado, lista[indice])
        end
    end
    return resultado
end

local valores = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
local apenas_pares = filtrar_pares(valores)

print("Números pares:")
for pos = 1, #apenas_pares do
    print(apenas_pares[pos])
end
