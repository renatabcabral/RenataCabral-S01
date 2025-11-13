-- Definição do tipo Bebida
data Bebida = Bebida {
    nome :: String,
    tipo :: String,
    preco :: Float
} deriving (Show)

-- Definição do tipo Pedido
data Status = Aberto | Entregue | Cancelado deriving (Show, Eq)

data Pedido = Pedido {
    bebidas :: [Bebida],
    status :: Status
} deriving (Show)

-- Função que calcula o valor total do pedido
valorTotalPedido :: Pedido -> Float
valorTotalPedido (Pedido _ Cancelado) = 0
valorTotalPedido (Pedido bs _) = sum (map preco bs) + 5

-- Função que retorna o nome da primeira bebida do pedido
primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido."
primeiraBebida (Pedido (b:_) _) = nome b

-- Exemplo de uso
main :: IO ()
main = do
    let bebida1 = Bebida "Café com leite" "Café" 8.0
    let bebida2 = Bebida "Chá Verde" "Chá" 6.0
    let pedido1 = Pedido [bebida1, bebida2] Aberto
    let pedido2 = Pedido [] Cancelado

    putStrLn ("Valor total do pedido 1: R$" ++ show (valorTotalPedido pedido1))
    putStrLn ("Primeira bebida do pedido 1: " ++ primeiraBebida pedido1)

    putStrLn ("Valor total do pedido 2: R$" ++ show (valorTotalPedido pedido2))
    putStrLn ("Primeira bebida do pedido 2: " ++ primeiraBebida pedido2)
