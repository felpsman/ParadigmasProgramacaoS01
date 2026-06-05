data Banda = Banda String String Double
data StatusEvento = Ativo | Encerrado | EventoCancelado
    deriving (Eq)
data Evento = Evento [Banda] StatusEvento
nomeBanda :: Banda -> String
nomeBanda (Banda nome _ _) = nome
cacheBanda :: Banda -> Double
cacheBanda (Banda _ _ cache) = cache
custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bandas status)
    | status == EventoCancelado = 0.0
    | otherwise = total * 1.2
    where
        total = sum (map cacheBanda bandas)
bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Evento sem bandas"
bandaAbertura (Evento (x:_) _) = nomeBanda x
bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Evento sem bandas"
bandaEncerramento (Evento bandas _) = nomeBanda (last bandas)
main :: IO ()
main = do
    let evento1 = Evento [Banda "Banda A" "Rock" 1000.0, Banda "Banda B" "Pop" 1500.0] Ativo
    let evento2 = Evento [Banda "Banda C" "Jazz" 800.0] Encerrado
    let evento3 = Evento [Banda "Banda D" "Metal" 1200.0] EventoCancelado
    print (custoTotalEvento evento1)
    putStrLn (bandaAbertura evento1)
    putStrLn (bandaEncerramento evento1)