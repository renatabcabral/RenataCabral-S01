data Item = Item {
    nome :: String,
    categoria :: String,
    preco :: Double
} deriving (Show)

data CompraZelda = CompraZelda {
    itens :: [Item]
} deriving (Show)

calculaDesconto :: [Item] -> Double
calculaDesconto xs =
    let total = sum (map preco xs)
    in if total > 200 then total * 0.10 else 0.0

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda xs)
    | total > 200 = total - calculaDesconto xs
    | otherwise = total + 15.0
  where total = sum (map preco xs)

-- Função auxiliar para imprimir os itens 
mostraItens :: [Item] -> IO ()
mostraItens [] = putStrLn "Nenhum item na compra."
mostraItens xs = mapM_ (\i -> putStrLn ("- " ++ nome i ++ " (" ++ categoria i ++ ") — R$" ++ show (preco i))) xs

main :: IO ()
main = do
    let item1 = Item "Espada Mestre" "Arma" 180.0
    let item2 = Item "Pocao de Vida" "Pocao" 50.0
    let item3 = Item "Escudo Hyliano" "Equipamento" 120.0

    let compra1 = CompraZelda [item1, item2]
    let compra2 = CompraZelda [item3]
    let compra3 = CompraZelda [item1, item2, item3]

    putStrLn "Compra 1:"
    mostraItens (itens compra1)
    putStrLn ("Valor final: R$" ++ show (valorFinal compra1))

    putStrLn "\nCompra 2:"
    mostraItens (itens compra2)
    putStrLn ("Valor final: R$" ++ show (valorFinal compra2))

    putStrLn "\nCompra 3:"
    mostraItens (itens compra3)
    putStrLn ("Valor final: R$" ++ show (valorFinal compra3))



