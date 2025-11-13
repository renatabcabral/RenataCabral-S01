-- Definicao do tipo Servico
data Servico = Servico {
    nome :: String,
    tipo :: String,
    precoBase :: Double
} deriving (Show)

-- Definicao do tipo Atendimento
data Status = EmAndamento | Finalizado | Cancelado deriving (Show, Eq)

data Atendimento = Atendimento {
    servicos :: [Servico],
    statusAtendimento :: Status
} deriving (Show)

-- Funcao que calcula o bonus/desconto espiritual
bonusEspiritual :: [Servico] -> Double
bonusEspiritual ss =
    let total = sum (map precoBase ss)
        totalComBonus = if length ss > 3 then total * 1.25 else total
    in if totalComBonus > 500 then totalComBonus * 0.90 else totalComBonus

-- Funcao que calcula o valor final do atendimento usando guards
valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento _ Cancelado) = 0.0
valorFinalAtendimento (Atendimento ss _) = bonusEspiritual ss

-- Funcao que descreve o primeiro servico
descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento [] _) = "Nenhum servico no atendimento."
descricaoPrimeiroServico (Atendimento (s:_) _) = "Primeiro servico: " ++ nome s ++ " (" ++ tipo s ++ ")"

-- Main com demonstracoes variadas
main :: IO ()
main = do
    let s1 = Servico "Banho Relaxante" "Banho" 120.0
    let s2 = Servico "Massagem Profunda" "Massagem" 200.0
    let s3 = Servico "Banquete Ritual" "Banquete" 300.0
    let s4 = Servico "Esfoliacao" "Banho" 80.0
    let s5 = Servico "Aromaterapia" "Massagem" 60.0

    -- Atendimento em andamento 
    let at1 = Atendimento [s1, s2] EmAndamento

    -- Atendimento finalizado 
    let at2 = Atendimento [s2, s3, s4, s5] Finalizado

    -- Atendimento cancelado (qualquer lista -> valor deve ser 0.0)
    let at3 = Atendimento [s1, s3] Cancelado

    putStrLn "Atendimento 1 (EmAndamento):"
    putStrLn (descricaoPrimeiroServico at1)
    putStrLn ("Valor final: R$" ++ show (valorFinalAtendimento at1))

    putStrLn "\nAtendimento 2 (Finalizado):"
    putStrLn (descricaoPrimeiroServico at2)
    putStrLn ("Valor final: R$" ++ show (valorFinalAtendimento at2))

    putStrLn "\nAtendimento 3 (Cancelado):"
    putStrLn (descricaoPrimeiroServico at3)
    putStrLn ("Valor final: R$" ++ show (valorFinalAtendimento at3))
