-- Definição do tipo Banda
data Banda = Banda {
    nome :: String,
    genero :: String,
    cache :: Double
} deriving (Show)

-- Definição do tipo Evento
data Status = Ativo | Encerrado | Cancelado deriving (Show, Eq)

data Evento = Evento {
    bandas :: [Banda],
    status :: Status
} deriving (Show)

-- Função que calcula o custo total do evento
custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento _ Cancelado) = 0.0
custoTotalEvento (Evento bs _) =
    let total = sum (map cache bs)
    in total + (total * 0.20)

-- Função que retorna o nome da banda de abertura
bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda para abrir o evento."
bandaAbertura (Evento (b:_) _) = "Banda de abertura: " ++ nome b

-- Função que retorna o nome da banda de encerramento
bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda para encerrar o evento."
bandaEncerramento (Evento bs _) =
    "Banda de encerramento: " ++ nome (last bs)

-- Função principal com três eventos
main :: IO ()
main = do
    let banda1 = Banda "The Kokis" "Rock" 5000.0
    let banda2 = Banda "Velda Jazz Band" "Jazz" 3500.0
    let banda3 = Banda "Gan Metal" "Metal" 7000.0
    let banda4 = Banda "Hyru Pop Stars" "Pop" 4000.0

    let evento1 = Evento [banda1, banda2, banda3] Ativo
    let evento2 = Evento [banda4, banda1] Encerrado
    let evento3 = Evento [banda2, banda3] Cancelado

    putStrLn "Evento 1 (Ativo):"
    putStrLn (bandaAbertura evento1)
    putStrLn (bandaEncerramento evento1)
    putStrLn ("Custo total: R$" ++ show (custoTotalEvento evento1))

    putStrLn "\nEvento 2 (Encerrado):"
    putStrLn (bandaAbertura evento2)
    putStrLn (bandaEncerramento evento2)
    putStrLn ("Custo total: R$" ++ show (custoTotalEvento evento2))

    putStrLn "\nEvento 3 (Cancelado):"
    putStrLn (bandaAbertura evento3)
    putStrLn (bandaEncerramento evento3)
    putStrLn ("Custo total: R$" ++ show (custoTotalEvento evento3))
