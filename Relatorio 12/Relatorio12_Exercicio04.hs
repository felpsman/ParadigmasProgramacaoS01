data Servico = Servico String String Double
data StatusAtendimento = EmAndamento | Finalizado | AtendimentoCancelado
    deriving (Eq)
data Atendimento = Atendimento [Servico] StatusAtendimento
nomeServico :: Servico -> String
nomeServico (Servico nome _ _) = nome
precoServico :: Servico -> Double
precoServico (Servico _ _ preco) = preco
totalServicos :: [Servico] -> Double
totalServicos servicos = sum (map precoServico servicos)
valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servicos status)
    | status == AtendimentoCancelado = 0.0
    | length servicos > 3 = total * 1.25
    | otherwise = total
    where
        total = totalServicos servicos
primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Atendimento sem servicos"
primeiroServico (Atendimento (x:_) _) = nomeServico x
main :: IO ()
main = do
    let atendimento1 = Atendimento [Servico "Banho" "Basico" 50.0, Servico "Massagem" "Extra" 80.0] Finalizado
    let atendimento2 = Atendimento [Servico "Banho" "Basico" 50.0, Servico "Ervas" "Extra" 40.0, Servico "Massagem" "Extra" 80.0, Servico "Comida" "Extra" 30.0] EmAndamento
    print (valorFinalAtendimento atendimento1)
    putStrLn (primeiroServico atendimento1)
    print (valorFinalAtendimento atendimento2)
    putStrLn (primeiroServico atendimento2)